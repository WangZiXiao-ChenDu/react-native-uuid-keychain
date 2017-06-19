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
```
