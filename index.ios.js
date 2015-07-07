'use strict';

var React = require('react-native');
var {
  Text,
  View,
  NativeModules,
  AlertIOS,
} = React;

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'red'
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
    return (
      <View style={styles.container}>
        <Text>This is a simple application.</Text>
      </View>
    )
  }
}

React.AppRegistry.registerComponent('SimpleApp', () => SimpleApp);