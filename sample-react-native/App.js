import React from 'react';
import { StyleSheet, Text, View, ScrollView, Image } from 'react-native';
import { Animated, Platform, StatusBar, FlatList, SafeAreaView } from 'react-native';
import { Card } from 'react-native-elements';
import { Pages } from 'react-native-pages';

let imageStyle = {
  width: null,
  height: null,
  resizeMode: 'cover',
  flex: 1,
};

export default function App() {
  return (
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
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFF',
  }
})