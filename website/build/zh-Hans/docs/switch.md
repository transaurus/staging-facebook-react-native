# Switch

Renders a boolean input.

This is a controlled component that requires an `onValueChange` callback that updates the `value` prop in order for the component to reflect user actions. If the `value` prop is not updated, the component will continue to render the supplied `value` prop instead of the expected result of any user actions.

## Example[​](#example "Direct link to Example")

***

# Reference

## Props[​](#props "Direct link to Props")

### [View Props](/zh-Hans/docs/view.md#props)[​](#view-props "Direct link to view-props")

Inherits [View Props](/zh-Hans/docs/view.md#props).

***

### `disabled`[​](#disabled "Direct link to disabled")

If true the user won't be able to toggle the switch.

| Type | Default |
| ---- | ------- |
| bool | `false` |

***

### `ios_backgroundColor`iOS[​](#ios_backgroundcolor-ios "Direct link to ios_backgroundcolor-ios")

On iOS, custom color for the background. This background color can be seen either when the switch value is `false` or when the switch is disabled (and the switch is translucent).

| Type                             |
| -------------------------------- |
| [color](/zh-Hans/docs/colors.md) |

***

### `onChange`[​](#onchange "Direct link to onchange")

Invoked when the user tries to change the value of the switch. Receives the change event as an argument. If you want to only receive the new value, use `onValueChange` instead.

| Type     |
| -------- |
| function |

***

### `onValueChange`[​](#onvaluechange "Direct link to onvaluechange")

Invoked when the user tries to change the value of the switch. Receives the new value as an argument. If you want to instead receive an event, use `onChange`.

| Type     |
| -------- |
| function |

***

### `ref`[​](#ref "Direct link to ref")

A ref setter that will be assigned an [element node](/zh-Hans/docs/element-nodes.md) when mounted.

***

### `thumbColor`[​](#thumbcolor "Direct link to thumbcolor")

Color of the foreground switch grip. If this is set on iOS, the switch grip will lose its drop shadow.

| Type                             |
| -------------------------------- |
| [color](/zh-Hans/docs/colors.md) |

***

### `trackColor`[​](#trackcolor "Direct link to trackcolor")

Custom colors for the switch track.

*iOS*: When the switch value is `false`, the track shrinks into the border. If you want to change the color of the background exposed by the shrunken track, use [`ios_backgroundColor`](/zh-Hans/docs/switch.md#ios_backgroundColor).

| Type                                  |
| ------------------------------------- |
| `object: {false: color, true: color}` |

***

### `value`[​](#value "Direct link to value")

The value of the switch. If true the switch will be turned on. Default value is false.

| Type |
| ---- |
| bool |
