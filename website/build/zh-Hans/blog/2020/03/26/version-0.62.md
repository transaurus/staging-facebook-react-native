# Announcing React Native 0.62 with Flipper

2020年3月26日 ·

<!-- -->

5 min read

[![Rick Hanlon](https://avatars3.githubusercontent.com/u/2440089?s=460\&v=4)](https://twitter.com/rickhanlonii)

[Rick Hanlon](https://twitter.com/rickhanlonii)

React Native Core at Facebook

Today we’re releasing React Native version 0.62 which includes support for Flipper by default.

This release comes in the midst of a global pandemic. We’re releasing this version today to respect the work of hundreds of contributors who made this release possible and to prevent the release from falling too far behind master. Please be mindful of the reduced capacity of contributors to help with issues and prepare to delay upgrading if necessary.

## Flipper by default[​](#flipper-by-default "Direct link to Flipper by default")

[Flipper](https://fbflipper.com/) is a developer tool for debugging mobile apps. It’s popular in the Android and iOS communities, and in this release we’ve enabled support by default for new and existing React Native apps.

![Screenshot of Flipper for React Native](/zh-Hans/assets/images/0.62-flipper-b77ae773d78e60a4ac173637d12b669b.png)

Flipper provides the following features out of the box:

* **Metro Actions**: Reload the app and trigger the Dev Menu right from the toolbar.
* **Crash Reporter**: View crash reports from Android and iOS devices.
* **React DevTools**: Use the newest version of React DevTools right alongside all your other tools.
* **Network Inspector**: View all of the network requests made by device applications.
* **Metro and Device Logs**: View, search, and filter all logs from both Metro and the Device.
* **Native Layout Inspector**: View and edit the native layout output by the React Native renderer.
* **Database and Preference Inspectors**: View and edit the device databases and preferences.

Additionally, since Flipper is an extensible platform, it provides a marketplace that pulls plugins from NPM so you can publish and install custom plugins specific to your workflows. See the available plugins [here](https://www.npmjs.com/search?q=flipper-plugin).

For more information, check out the [Flipper documentation](https://fbflipper.com/docs/features/react-native).

## New dark mode features[​](#new-dark-mode-features "Direct link to New dark mode features")

We’ve added a new `Appearance` module to provide access to the user's appearance preferences, such as their preferred color scheme (light or dark).

```
const colorScheme = Appearance.getColorScheme();
if (colorScheme === 'dark') {
  // Use dark color scheme
}
```

We’ve also added a hook to subscribe to state updates to the users preferences:

```
import {Text, useColorScheme} from 'react-native';

const MyComponent = () => {
  const colorScheme = useColorScheme();
  return <Text>useColorScheme(): {colorScheme}</Text>;
};
```

See the docs for [Appearance](/zh-Hans/docs/appearance.md) and [useColorScheme](/zh-Hans/docs/usecolorscheme.md) for more information.

## Moving Apple TV to react-native-tvos[​](#moving-apple-tv-to-react-native-tvos "Direct link to Moving Apple TV to react-native-tvos")

As part of our [Lean Core effort](/zh-Hans/blog.md#lean-core) and to bring Apple TV in line with other platforms like React Native Windows and React Native macOS, we’ve started to remove Apple TV specific code from core.

Going forward, Apple TV support for React Native will be maintained in [react-native-community/react-native-tvos](https://github.com/react-native-community/react-native-tvos) along with the corresponding `react-native-tvos` NPM package. This is a full fork of the main repository, with only the changes needed to support Apple TV.

Releases of `react-native-tvos` will be based on the public release of React Native. For this 0.62 release of `react-native` please upgrade Apple TV projects to use `react-native-tvos` 0.62.

## More upgrade support[​](#more-upgrade-support "Direct link to More upgrade support")

When 0.61 was released, the community introduced a new [upgrade helper](https://react-native-community.github.io/upgrade-helper/) tool to support developers upgrading to new versions of React Native. The upgrade helper provides a diff of changes from the version you're on to the version you're targeting, allowing you to see the changes that need to be made for your specific upgrade.

Even with this tool, issues come up when upgrading. Today we're introducing more dedicated upgrading support by announcing [Upgrade-Support](https://github.com/react-native-community/upgrade-support). Upgrade Support is a GitHub issue tracker where users can submit issues specific to upgrading their projects to receive help from the community.

We're always working to improve the upgrade experience, and we hope that these tools give users the support they need in the edge cases we haven't covered yet.

## Other improvements[​](#other-improvements "Direct link to Other improvements")

* **LogBox**: We’re adding the new LogBox error and warning experience as an opt-in; to enable it, add `require('react-native').unstable_enableLogBox()` to your `index.js` file.
* **React DevTools v4**: This change includes an upgrade to the [latest React DevTools](https://reactjs.org/blog/2019/08/15/new-react-devtools.html) which offers significant performance gains, an improved navigation experience, and full support for React Hooks.
* **Accessibility improvements**: We’ve made improvements to accessibility including adding [accessibilityValue](https://reactnative.dev/docs/accessibility#accessibilityvalue-ios-android), missing props on [Touchables](https://github.com/facebook/react-native/commit/8c0c860e38f57e18296f689e47dfb4a54088c260), `onSlidingComplete` [accessibility events](https://github.com/facebook/react-native/commit/c7aa6dc8270c0eabc913fe6c617c8131e3f4b3c5), and changing the default role of Switch component from `"button"` to `"switch"`.

## Breaking changes[​](#breaking-changes "Direct link to Breaking changes")

* **Remove PropTypes**: We're removing `propTypes` from core components in order to reduce the app size impact of React Native core and to favor static type systems which check at compile time instead of runtime.
* **Remove accessibilityStates**: We’ve [removed](https://github.com/facebook/react-native/commit/7b35f427fd66cb0f36921b992095fe5b3c14d8b9) the deprecated `accessibilityStates` property in favor of the new `accessibilityState` prop which is a more semantically rich way for components to describe information about their state to accessibility services.
* **TextInput changes**: We removed `onTextInput` [from TextInput](https://github.com/facebook/react-native/commit/3f7e0a2c9601fc186f25bfd794cd0008ac3983ab) as it’s uncommon, not W3C compliant, and difficult to implement in [Fabric](https://github.com/react-native-community/discussions-and-proposals/issues/4). We also removed the undocumented `inputView` prop, and `selectionState`.

## Deprecations[​](#deprecations "Direct link to Deprecations")

* `AccessibilityInfo.fetch` was already deprecated, but in this release we [added a warning](https://github.com/facebook/react-native/commit/523ab8333800afbfb169c6fd70ab6611fe07cc2a).
* Setting `useNativeDriver` is [now required](https://github.com/facebook/react-native/commit/5876052615f4858ed5fc32fa3da9b64695974238) to support switching the default in the future.
* The `ref` of an `Animated` component is now the internal component and [deprecated](https://github.com/facebook/react-native/commit/66e72bb4e00aafbcb9f450ed5db261d98f99f82a) `getNode`.

## Thanks[​](#thanks "Direct link to Thanks")

Thank you to the hundreds of contributors that helped make 0.62 possible!

To see all the updates, take a look at the [0.62 changelog](https://github.com/facebook/react-native/blob/main/CHANGELOG.md#v0620).

**Tags:**

* [announcement](/zh-Hans/blog/tags/announcement.md)
* [release](/zh-Hans/blog/tags/release.md)
