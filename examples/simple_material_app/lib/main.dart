import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Material App"),
        ),
        body: Container(
          child: Center(
            child: Text("Hello World"),
          ),
        ),
      ),
    );
  }
}


