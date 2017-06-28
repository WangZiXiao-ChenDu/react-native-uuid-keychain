## Installation
Installation can be done through ``npm``:

```shell
npm i react-native-uuid-keychain --save
```

## Usage
用于获取app的唯一标示

```js
import { NativeModules } from 'react-native';
```

```jsx
NativeModules.RNGetUUID_KeyChain.getUDIDKeyChain('Bundle Identifier', (uuid) => {
  // service code
});
log: '9DA26F9B-5111-4CC5-BEF5-607573836C45'.
```
