# performance

The global [`performance`](https://developer.mozilla.org/en-US/docs/Web/API/Window/performance) object, as defined in Web specifications.

***

# Reference

## Instance properties[​](#instance-properties "Direct link to Instance properties")

### `eventCounts`[​](#eventcounts "Direct link to eventcounts")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/eventCounts).

### `memory`[​](#memory "Direct link to memory")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/memory).

### `rnStartupTiming` ⚠️[​](#rnstartuptiming-️ "Direct link to rnstartuptiming-️")

Non-standard

This is a React Native specific extension.

Provides information about the startup time of the application.

ts

```
get rnStartupTiming(): ReactNativeStartupTiming;
```

The `ReactNativeStartupTiming` interface provides the following fields:

| Name                                     | Type           | Description                                               |
| ---------------------------------------- | -------------- | --------------------------------------------------------- |
| `startTime`                              | number \| void | When the React Native runtime initialization was started. |
| `executeJavaScriptBundleEntryPointStart` | number \| void | When the execution of the application bundle was started. |
| `endTime`                                | number \| void | When the React Native runtime was fully initialized.      |

### `timeOrigin`[​](#timeorigin "Direct link to timeorigin")

Partial support

Provides the number of milliseconds from the UNIX epoch until system boot, instead of the number of milliseconds from the UNIX epoch until app startup.

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/timeOrigin).

## Instance methods[​](#instance-methods "Direct link to Instance methods")

### `clearMarks()`[​](#clearmarks "Direct link to clearmarks")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/clearMarks).

### `clearMeasures()`[​](#clearmeasures "Direct link to clearmeasures")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/clearMeasures).

### `getEntries()`[​](#getentries "Direct link to getentries")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntries).

### `getEntriesByName()`[​](#getentriesbyname "Direct link to getentriesbyname")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByName).

### `getEntriesByType()`[​](#getentriesbytype "Direct link to getentriesbytype")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByType).

### `mark()`[​](#mark "Direct link to mark")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/mark).

### `measure()`[​](#measure "Direct link to measure")

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/measure).

### `now()`[​](#now "Direct link to now")

Partial support

Provides the number of milliseconds from system boot, instead of the number of milliseconds from app startup.

See [documentation in MDN](https://developer.mozilla.org/en-US/docs/Web/API/Performance/now).
