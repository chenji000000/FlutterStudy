import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: MyHomePage('tip calculator'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage(this.title);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  double billAmount = 0.0;
  double tipPercentage = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextField billAmountField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          billAmount = double.parse(value);
        } catch (exception) {
          billAmount = 0.0;
        }
      },
      decoration: InputDecoration(labelText: "Bill amount(\$)"),
    );

    TextField tipPercentageField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          tipPercentage = double.parse(value);
        } catch (exception) {
          tipPercentage = 0.0;
        }
      },
      decoration: InputDecoration(labelText: "Tip %", hintText: "15"),
    );

    RaisedButton calculateButton = RaisedButton(
        child: Text("Calculate"),
        onPressed: () {
          double calculatedTip = billAmount * tipPercentage / 100.0;
          double total = billAmount + calculatedTip;

          AlertDialog dialog = AlertDialog(
              content: Text("Tip: \$$calculatedTip \n"
                  "Total: \$$total"));
          showDialog(
              context: context, builder: (BuildContext context) => dialog);
        });

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            billAmountField,
            tipPercentageField,
            calculateButton
          ],
        ),
      ),
    );
  }
}
