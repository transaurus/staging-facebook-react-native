## [Package Exports Support in React Native](/zh-Hans/blog/2023/06/21/package-exports-support.md)

2023年6月21日 ·

<!-- -->

10 min read

![Alex Hunt](https://github.com/huntie.png)

Alex Hunt

Software Engineer @ Meta

[](https://x.com/huntie "X")[](https://github.com/huntie "GitHub")

With the release of [React Native 0.72](/zh-Hans/blog/2023/06/21/0.72-metro-package-exports-symlinks.md), Metro — our JavaScript build tool — now includes beta support for the `package.json` [`"exports"`](https://nodejs.org/docs/latest-v18.x/api/packages.html#exports) field. When [enabled](/zh-Hans/blog/2023/06/21/package-exports-support.md#enabling-package-exports-beta), it adds the following functionality:

* [React Native projects will work with more npm packages out-of-the-box](/zh-Hans/blog/2023/06/21/package-exports-support.md#for-app-developers)
* [New capabilities for packages to define their API and target React Native](/zh-Hans/blog/2023/06/21/package-exports-support.md#for-package-maintainers-preview)
* [Some breaking changes to package resolution (in edge cases)](/zh-Hans/blog/2023/06/21/package-exports-support.md#breaking-changes)

In this post we'll cover how Package Exports works, and what these changes mean for you as a React Native app developer or package maintainer.

**Tags:**

* [announcement](/zh-Hans/blog/tags/announcement.md)
* [metro](/zh-Hans/blog/tags/metro.md)

[**Read more**](/zh-Hans/blog/2023/06/21/package-exports-support.md)
