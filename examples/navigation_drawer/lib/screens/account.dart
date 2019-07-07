import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = "/acount";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Acount"),
      ),
      body: Container(
        child: Center(
          child: Text("Account Screen"),
        ),
      ),
    );
  }
}
