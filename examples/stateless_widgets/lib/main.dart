import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.grey, fontSize: myTextSize);
    var colum = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
          title: Text(
            "Favarite",
            style: myTextStyle,
          ),
          icon: Icon(Icons.favorite, size: myIconSize, color: Colors.red),
        ),
        MyCard(
          title: Text(
            "Alarm",
            style: myTextStyle,
          ),
          icon: Icon(Icons.alarm, size: myIconSize, color: Colors.blue),
        ),
        MyCard(
          title: Text(
            "Airport Shuttle",
            style: myTextStyle,
          ),
          icon: Icon(Icons.airport_shuttle,
              size: myIconSize, color: Colors.amber),
        ),
        MyCard(
          title: Text(
            "Done",
            style: myTextStyle,
          ),
          icon: Icon(Icons.done, size: myIconSize, color: Colors.green),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(child: SingleChildScrollView(child: colum)),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}
