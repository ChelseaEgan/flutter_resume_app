import 'package:flutter/material.dart';
import 'screens/business_card.dart';
import 'screens/predictor.dart';
import 'screens/resume.dart';

class App extends StatelessWidget {
  final String title;

  const App({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Week 5 Explorations',
        theme: ThemeData(primarySwatch: Colors.blue),
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
          appBar:
              AppBar(title: Text('Call Me Maybe?'), bottom: TabBar(tabs: tabs)),
          body: TabBarView(
            children: screens,
          )),
    );
  }
}
