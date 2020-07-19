import 'package:flutter/material.dart';
import 'package:project3/main.dart';
import 'package:project3/styles.dart';
import 'screens/business_card.dart';
import 'screens/predictor.dart';
import 'screens/resume.dart';

class App extends StatelessWidget {
  final String title;

  const App({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blueGrey[900],
            accentColor: Colors.deepPurple[100],
            fontFamily: 'Poppins',
            textTheme: TextTheme(
              headline1: Styles.headerLarge,
              headline5: Styles.subheaderBold,
              bodyText2: Styles.bodyText,
              bodyText1: Styles.smallText,
            )),
        home: MainTabController());
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(
      icon: Icon(Icons.person_pin_circle),
    ),
    Tab(icon: Icon(Icons.description)),
    Tab(icon: Icon(Icons.blur_on))
  ];
  final screens = [BusinessCard(), Resume(), Predictor()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(title: Text(title), bottom: TabBar(tabs: tabs)),
          body: TabBarView(
            children: screens,
          )),
    );
  }
}
