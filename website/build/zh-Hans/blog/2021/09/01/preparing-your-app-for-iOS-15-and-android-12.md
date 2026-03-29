# Preparing Your App for iOS 15 and Android 12

2021年9月1日 ·

<!-- -->

4 min read

![Samuel Susla](https://github.com/sammy-SC.png)

Samuel Susla

Software Engineer @ Meta

[](https://x.com/SamuelSusla "X")[](https://github.com/sammy-SC "GitHub")

Hello everyone!

With new mobile OS versions releasing late this year, we recommend preparing your React Native apps beforehand to avoid regressions when the releases become generally available.

## iOS 15[​](#ios-15 "Direct link to iOS 15")

The release date of iOS 15 hasn’t been announced yet, but based on previous iOS releases, it will likely be around September 16th. Please also account for App Store review time if any changes are required to prepare your app for iOS 15.

### What to watch out for[​](#what-to-watch-out-for "Direct link to What to watch out for")

#### QuickType Bar[​](#quicktype-bar "Direct link to QuickType Bar")

The way to disable *QuickType* bar in *[TextInput](/zh-Hans/docs/textinput.md)* has changed. *QuickType* bar is the bar above keyboard with three suggested words. In case your UI needs to have the bar hidden, setting [autoCorrect](/zh-Hans/docs/textinput.md#autocorrect) to `false` no longer disables *QuickType* bar in iOS 15 like earlier versions. In order to hide the *QuickType* bar, you need to also set [spellCheck](/zh-Hans/docs/textinput.md#spellcheck-ios) to `false`. This will disable spell check, the red underlines, in your *TextInput*. Disabling QuickType bar with spell check enabled is no longer an option.

![Screenshot of QuickType bar](/blog/assets/ios-15-quicktype-bar.png)

QuickType bar with three suggested words

To disable QuickType bar in iOS 15, set prop [spellCheck](/zh-Hans/docs/textinput.md#spellcheck-ios) and [autoCorrect](/zh-Hans/docs/textinput.md#autocorrect) to `false`.

```
<TextInput
  placeholder="something"
  autoCorrect={false}
  spellCheck={false}
/>
```

#### Transparent Navigation Bar[​](#transparent-navigation-bar "Direct link to Transparent Navigation Bar")

iOS 15 changes the default behaviour of the navigation bar. Unlike in iOS 14, the navigation bar becomes transparent when the content is scrolled all the way up. Make sure to watch out for this as it can make content difficult to read. For tips on how to work around this issue, check out [this thread](https://developer.apple.com/forums/thread/682420).

![Screenshot of navigation bar on iOS 14 and iOS 15](/zh-Hans/assets/images/ios-15-navigation-bar-6731752405656ea13f92951d177de105.jpg)

### How to install iOS 15[​](#how-to-install-ios-15 "Direct link to How to install iOS 15")

#### Device[​](#device "Direct link to Device")

If you have a spare device, you can join the [beta program](https://beta.apple.com/sp/betaprogram/) and install iOS 15. At this point, beta releases are generally stable, but keep in mind that **the upgrade to iOS 15 is irreversible**.

#### Simulator[​](#simulator "Direct link to Simulator")

To test your app on a simulator with iOS 15, you will need to download Xcode 13. You can find Xcode 13 [here](https://developer.apple.com/xcode/).

## Android 12[​](#android-12 "Direct link to Android 12")

Android 12 will be released this autumn and it introduces some changes which can potentially affect your app experience. Traditionally, Google Play requires target SDK of your app to be upgraded before November of the following year. (see requirements for previous release [here](https://developer.android.com/distribute/best-practices/develop/target-sdk)).

### What to watch out for[​](#what-to-watch-out-for-1 "Direct link to What to watch out for")

#### Overscroll Effect[​](#overscroll-effect "Direct link to Overscroll Effect")

Android 12 introduces new [overscroll effect](https://developer.android.com/about/versions/12/overscroll) which affects all scroll containers. As React Native scroll views are based on the native views, we recommend to check your scrollable containers to ensure the effect is applied correctly. You can opt-out from it by setting [`overScrollMode`](/zh-Hans/docs/scrollview.md#overscrollmode-android) prop to `never`.

#### Permission Updates[​](#permission-updates "Direct link to Permission Updates")

Android 12 allows users of your app to only provide access to the approximate location if you request it with **`ACCESS_FINE_LOCATION`** permission. Learn more about it [here](https://developer.android.com/about/versions/12/approximate-location).

Check out Google’s [detailed behavior changes](https://developer.android.com/about/versions/12/behavior-changes-all) for all apps running on Android 12.

### How to install Android 12[​](#how-to-install-android-12 "Direct link to How to install Android 12")

#### Device[​](#device-1 "Direct link to Device")

If you have a spare Android device, check if you’re able to install Android 12 Beta via [instructions here.](https://developer.android.com/about/versions/12/get)

#### Emulator[​](#emulator "Direct link to Emulator")

If you don’t have a device available, you can set up an emulator following [instructions here](https://developer.android.com/about/versions/12/get#on_emulator).

**Tags:**

* [engineering](/zh-Hans/blog/tags/engineering.md)
