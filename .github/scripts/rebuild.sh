#!/usr/bin/env bash
set -euo pipefail

# rebuild.sh for facebook/react-native-website
# Runs on existing source tree (no clone). Current directory is the docusaurus root (website/).
# This is a Yarn 4 workspace monorepo — workspace deps are installed at the repo root.
# We clone the source repo to get workspace deps, overlay translated files, build, copy back.

REPO_URL="https://github.com/facebook/react-native-website"
BRANCH="main"

echo "=== rebuild.sh: facebook/react-native-website ==="

# Remember where the staged (translated) website files are
STAGE_DIR="$(pwd)"

# --- Node version: require Node 22+ ---
NODE_22_PATH="/opt/hostedtoolcache/node/22.22.1/x64/bin"
if [ -d "$NODE_22_PATH" ]; then
    export PATH="$NODE_22_PATH:$PATH"
fi

NODE_MAJOR=$(node --version 2>/dev/null | sed 's/v//' | cut -d. -f1 || echo "0")
echo "[INFO] Current Node version: $(node --version 2>/dev/null || echo 'not found')"
if [ "$NODE_MAJOR" -lt 22 ]; then
    echo "[INFO] Trying to find Node 22 in hostedtoolcache..."
    HOSTED_NODE=$(ls /opt/hostedtoolcache/node/ 2>/dev/null | grep '^22\.' | tail -1)
    if [ -n "$HOSTED_NODE" ]; then
        export PATH="/opt/hostedtoolcache/node/$HOSTED_NODE/x64/bin:$PATH"
    else
        echo "[INFO] Node 22 not in hostedtoolcache, installing via n..."
        export N_PREFIX="$HOME/.n"
        mkdir -p "$N_PREFIX"
        N_PREFIX="$HOME/.n" n 22
        export PATH="$HOME/.n/bin:$PATH"
    fi
    NODE_MAJOR=$(node --version 2>/dev/null | sed 's/v//' | cut -d. -f1 || echo "0")
    if [ "$NODE_MAJOR" -lt 22 ]; then
        echo "[ERROR] Need Node 22+ but have $(node --version 2>/dev/null || echo 'not found')."
        exit 1
    fi
fi
echo "[INFO] Node version: $(node --version)"
echo "[INFO] npm version: $(npm --version)"

# --- Corepack + Yarn 4.13.0 ---
echo "[INFO] Enabling corepack for Yarn 4..."
corepack enable || npm install -g corepack
corepack prepare yarn@4.13.0 --activate
echo "[INFO] Yarn version: $(yarn --version)"

# --- Clone source repo for workspace setup ---
# The staging repo only contains the website/ contents (translated).
# The Yarn workspace root (package.json, yarn.lock, node_modules) lives one level up.
# We clone the source to get a complete workspace, then overlay our translated files.
SOURCE_CLONE="/tmp/rn-rebuild-source-$$"
echo "[INFO] Cloning source repo for workspace deps..."
git clone --depth 1 --branch "$BRANCH" "$REPO_URL" "$SOURCE_CLONE"

# --- Install workspace dependencies ---
echo "[INFO] Installing workspace dependencies..."
cd "$SOURCE_CLONE"
yarn install --immutable

# --- Overlay translated files from staging ---
echo "[INFO] Overlaying translated files into workspace website/..."
rsync -a --exclude='.git' "$STAGE_DIR/" "$SOURCE_CLONE/website/"

# --- Build ---
echo "[INFO] Building Docusaurus site..."
cd "$SOURCE_CLONE/website"
yarn build

# --- Copy build output back to staging dir ---
echo "[INFO] Copying build output back to staging dir..."
rsync -a "$SOURCE_CLONE/website/build/" "$STAGE_DIR/build/"

# --- Cleanup ---
rm -rf "$SOURCE_CLONE"

echo "[DONE] Build complete. Output in: $STAGE_DIR/build/"
