'use strict';

var React = require('react-native');
var {
  Text,
  View,
  NativeModules,
  AlertIOS,
  AppStateIOS,
} = React;

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 20,
    backgroundColor: 'white'
  }
});

var simple = NativeModules.SimpleModule;

class SimpleApp extends React.Component {
  componentWillMount() {
    simple.sayHello();
    AlertIOS.alert(
      'Hello',
      'This alert will only display when running in an app, not an extension',
      [
        {text: 'Boo!', onPress: () => console.log('Foo Pressed!')},
        {text: 'Okay', onPress: () => console.log('Bar Pressed!')},
      ]
    );
  }

  render() {
    var text = "";
    if (AppStateIOS.currentState === 'extension') {
      text = "You're running React in an iOS App Extension. :)";
    } else {
      text = "You're running React in an iOS Application.";
    }

    return (
      <View style={styles.container}>
        <Text>{text}</Text>
      </View>
    )
  }
}




React.AppRegistry.registerComponent('SimpleApp', () => SimpleApp);