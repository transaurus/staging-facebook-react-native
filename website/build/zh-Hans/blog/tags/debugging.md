## [React Native 0.73 - Debugging Improvements, Stable Symlink Support, and more](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md)

2023年12月6日 ·

<!-- -->

13 min read

![Marek Fořt](https://github.com/fortmarek.png)

Marek Fořt

Software Engineer @ Shopify

[](https://x.com/marekfort "X")[](https://github.com/fortmarek "GitHub")

![Thibault Malbranche](https://github.com/titozzz.png)

Thibault Malbranche

Lead Mobile Engineer @ Brigad

[](https://x.com/titozzz "X")[](https://github.com/titozzz "GitHub")

![Hur Ali](https://github.com/hurali97.png)

Hur Ali

Software Engineer @ Callstack

[](https://x.com/hurali97 "X")[](https://github.com/hurali97 "GitHub")

![Luna Wei](https://github.com/lunaleaps.png)

Luna Wei

Software Engineer @ Meta

[](https://x.com/lunaleaps "X")[](https://github.com/lunaleaps "GitHub")

![Alex Hunt](https://github.com/huntie.png)

Alex Hunt

Software Engineer @ Meta

[](https://x.com/huntie "X")[](https://github.com/huntie "GitHub")

Today we're releasing React Native 0.73! This release adds improvements to debugging with Hermes, stable symlink support, Android 14 support, and new experimental features. We are also deprecating legacy debugging features, and are releasing the next pillar of the New Architecture: Bridgeless Mode!

### Highlights[​](#highlights "Direct link to Highlights")

* [Debugging Improvements](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#debugging-improvements)
* [Stable Symlink Support in Metro](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#stable-symlink-support-in-metro)
* [Kotlin Template on Android](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#kotlin-template-on-android)
* [Android 14 Support](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#android-14-support)
* [New Architecture Updates](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#new-architecture-updates)
* [Deprecated Debugging Features](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#deprecated-debugging-features)

### Breaking Changes[​](#breaking-changes "Direct link to Breaking Changes")

* [Babel Package Renames](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#babel-package-renames)
* [Other Breaking Changes](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#other-breaking-changes)
* [React Native CLI Changes](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#react-native-cli-changes)
* [Deprecated @types/react-native](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md#deprecated-typesreact-native)

**Tags:**

* [announcement](/zh-Hans/blog/tags/announcement.md)
* [release](/zh-Hans/blog/tags/release.md)
* [debugging](/zh-Hans/blog/tags/debugging.md)

[**Read more**](/zh-Hans/blog/2023/12/06/0.73-debugging-improvements-stable-symlinks.md)
