import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/home.dart';
import 'package:navigation_drawer/screens/account.dart';
import 'package:navigation_drawer/screens/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: <String, WidgetBuilder> {
        SettingsScreen.routeName: (context) => SettingsScreen(),
        AccountScreen.routeName: (context) => AccountScreen()
      },
    );
  }
}

