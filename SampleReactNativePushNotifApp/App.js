/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Fragment} from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  Image,
} from 'react-native';

import {
  Header,
  LearnMoreLinks,
  Colors,
  DebugInstructions,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

import { Card } from 'react-native-elements';
import { Pages } from 'react-native-pages';

let imageStyle = {
  width: null,
  height: null,
  resizeMode: 'cover',
  flex: 1,
};

const App = () => {
  return (
    <Fragment>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView style={{flex: 1, backgroundColor: '#263238'}}>
        <View style={{ flex: 1, backgroundColor: '#263238' }}>
          <Pages>
            <Image source={{uri: "https://facebook.github.io/react-native/img/tiny_logo.png"}} style={imageStyle} />
            <Image source={{uri: "https://facebook.github.io/react-native/img/tiny_logo.png"}} style={imageStyle} />
            <Image source={{uri: "https://facebook.github.io/react-native/img/tiny_logo.png"}} style={imageStyle} />
            <Image source={{uri: "https://facebook.github.io/react-native/img/tiny_logo.png"}} style={imageStyle} />
            <Image source={{uri: "https://facebook.github.io/react-native/img/tiny_logo.png"}} style={imageStyle} />
          </Pages>
          <ScrollView horizontal={true} style={{marginBottom: 10}}>
            <Card title="Card title">
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
            </Card>
            <Card title="Card title">
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
            </Card>
            <Card title="Card title">
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
              <Text>hogehoge</Text>
            </Card>
          </ScrollView>
          <View style={[styles.container, {margin: 15, padding: 10, flex: 1}]}>
            <Image source={{uri: "https://facebook.github.io/react-native/img/tiny_logo.png"}} style={{height: 100, width: 100, alignSelf: 'stretch'}} />
            <View style={{marginLeft: 10, marginRight: 10, flex: 1}}>
              <Text>
              aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
              </Text>
              <Text>hogehoge</Text>
              <Text>height</Text>
            </View>
          </View>
        </View>
      </SafeAreaView>
    </Fragment>
  );
};

const styles = StyleSheet.create({
  scrollView: {
    backgroundColor: Colors.lighter,
  },
  engine: {
    position: 'absolute',
    right: 0,
  },
  body: {
    backgroundColor: Colors.white,
  },
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
    color: Colors.black,
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
    color: Colors.dark,
  },
  highlight: {
    fontWeight: '700',
  },
  footer: {
    color: Colors.dark,
    fontSize: 12,
    fontWeight: '600',
    padding: 4,
    paddingRight: 12,
    textAlign: 'right',
  },
  container: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFF',
  },
});

export default App;
