# ActivityIndicator

Displays a circular loading indicator.

## Example[​](#example "Direct link to Example")

# Reference

## Props[​](#props "Direct link to Props")

### [View Props](/zh-Hans/docs/view.md#props)[​](#view-props "Direct link to view-props")

Inherits [View Props](/zh-Hans/docs/view.md#props).

***

### `animating`[​](#animating "Direct link to animating")

Whether to show the indicator (`true`) or hide it (`false`).

| Type | Default |
| ---- | ------- |
| bool | `true`  |

***

### `color`[​](#color "Direct link to color")

The foreground color of the spinner.

| Type                             | Default                                                      |
| -------------------------------- | ------------------------------------------------------------ |
| [color](/zh-Hans/docs/colors.md) | `null` (system accent default color)Android***`'#999999'`iOS |

***

### `hidesWhenStopped`iOS[​](#hideswhenstopped-ios "Direct link to hideswhenstopped-ios")

Whether the indicator should hide when not animating.

| Type | Default |
| ---- | ------- |
| bool | `true`  |

***

### `ref`[​](#ref "Direct link to ref")

A ref setter that will be assigned an [element node](/zh-Hans/docs/element-nodes.md) when mounted.

***

### `size`[​](#size "Direct link to size")

Size of the indicator.

| Type                                       | Default   |
| ------------------------------------------ | --------- |
| enum(`'small'`, `'large'`)***numberAndroid | `'small'` |
