import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import {
  View,
  StyleSheet,
  Text,
  TouchableOpacity,
  NativeModules,
  findNodeHandle,
} from 'react-native';

const RNScrollScreenshot = NativeModules.RNScrollScreenshot;

class App extends React.Component {
  componentWillUnmount () {
    subscription.remove();
  }

  render() {
    const ref = findNodeHandle(this.props.nodeRef);
    return (
      NativeModules.RNGetUUID_KeyChain.getUDIDKeyChain('用APP的bundle ID.eg:com.bundle.XXX', (uuid)=> {
        //业务代码
      });
      });
    )
  }
}
