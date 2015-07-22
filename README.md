# ReactExtensionDemo
Super simple demo of using ReactNative in an app extension

This is just a proof-of-concept to demonstrate using React Native in an iOS App Extension.
see: https://github.com/facebook/react-native/pull/1895

Installation:
```bash
pod install
open ReactExtensionDemo.xcworkspace
```

Run the `ShareExtension` scheme and choose a host app to run the extension.  The activation predicate is set to activate for all inputs, so it should be available in any share sheet.
