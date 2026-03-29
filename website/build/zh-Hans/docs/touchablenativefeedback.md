# TouchableNativeFeedback

tip

If you're looking for a more extensive and future-proof way to handle touch-based input, check out the [Pressable](/zh-Hans/docs/pressable.md) API.

A wrapper for making views respond properly to touches (Android only). On Android this component uses native state drawable to display touch feedback.

At the moment it only supports having a single View instance as a child node, as it's implemented by replacing that View with another instance of RCTView node with some additional properties set.

Background drawable of native feedback touchable can be customized with `background` property.

## Example[​](#example "Direct link to Example")

***

# Reference

## Props[​](#props "Direct link to Props")

### [TouchableWithoutFeedback Props](/zh-Hans/docs/touchablewithoutfeedback.md#props)[​](#touchablewithoutfeedback-props "Direct link to touchablewithoutfeedback-props")

Inherits [TouchableWithoutFeedback Props](/zh-Hans/docs/touchablewithoutfeedback.md#props).

***

### `background`[​](#background "Direct link to background")

Determines the type of background drawable that's going to be used to display feedback. It takes an object with `type` property and extra data depending on the `type`. It's recommended to use one of the static methods to generate that dictionary.

| Type               |
| ------------------ |
| backgroundPropType |

***

### `useForeground`[​](#useforeground "Direct link to useforeground")

Set to true to add the ripple effect to the foreground of the view, instead of the background. This is useful if one of your child views has a background of its own, or you're e.g. displaying images, and you don't want the ripple to be covered by them.

Check TouchableNativeFeedback.canUseNativeForeground() first, as this is only available on Android 6.0 and above. If you try to use this on older versions you will get a warning and fallback to background.

| Type |
| ---- |
| bool |

***

### `hasTVPreferredFocus`Android[​](#hastvpreferredfocus-android "Direct link to hastvpreferredfocus-android")

TV preferred focus (see documentation for the View component).

| Type |
| ---- |
| bool |

***

### `nextFocusDown`Android[​](#nextfocusdown-android "Direct link to nextfocusdown-android")

TV next focus down (see documentation for the View component).

| Type   |
| ------ |
| number |

***

### `nextFocusForward`Android[​](#nextfocusforward-android "Direct link to nextfocusforward-android")

TV next focus forward (see documentation for the View component).

| Type   |
| ------ |
| number |

***

### `nextFocusLeft`Android[​](#nextfocusleft-android "Direct link to nextfocusleft-android")

TV next focus left (see documentation for the View component).

| Type   |
| ------ |
| number |

***

### `nextFocusRight`Android[​](#nextfocusright-android "Direct link to nextfocusright-android")

TV next focus right (see documentation for the View component).

| Type   |
| ------ |
| number |

***

### `nextFocusUp`Android[​](#nextfocusup-android "Direct link to nextfocusup-android")

TV next focus up (see documentation for the View component).

| Type   |
| ------ |
| number |

## Methods[​](#methods "Direct link to Methods")

### `SelectableBackground()`[​](#selectablebackground "Direct link to selectablebackground")

tsx

```
static SelectableBackground(
  rippleRadius: number | null,
): ThemeAttributeBackgroundPropType;
```

Creates an object that represents android theme's default background for selectable elements (`?android:attr/selectableItemBackground`). `rippleRadius` parameter controls the radius of the ripple effect.

***

### `SelectableBackgroundBorderless()`[​](#selectablebackgroundborderless "Direct link to selectablebackgroundborderless")

tsx

```
static SelectableBackgroundBorderless(
  rippleRadius: number | null,
): ThemeAttributeBackgroundPropType;
```

Creates an object that represent android theme's default background for borderless selectable elements (`?android:attr/selectableItemBackgroundBorderless`). Available on android API level 21+. `rippleRadius` parameter controls the radius of the ripple effect.

***

### `Ripple()`[​](#ripple "Direct link to ripple")

tsx

```
static Ripple(
  color: ColorValue,
  borderless: boolean,
  rippleRadius?: number | null,
): RippleBackgroundPropType;
```

Creates an object that represents ripple drawable with specified color (as a string). If property `borderless` evaluates to true the ripple will render outside of the view bounds (see native actionbar buttons as an example of that behavior). This background type is available on Android API level 21+.

**Parameters:**

| Name         | Type    | Required | Description                                 |
| ------------ | ------- | -------- | ------------------------------------------- |
| color        | string  | Yes      | The ripple color                            |
| borderless   | boolean | Yes      | If the ripple can render outside its bounds |
| rippleRadius | ?number | No       | controls the radius of the ripple effect    |

***

### `canUseNativeForeground()`[​](#canusenativeforeground "Direct link to canusenativeforeground")

tsx

```
static canUseNativeForeground(): boolean;
```
