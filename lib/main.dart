import 'package:flutter/material.dart';
import 'package:qr_scanner_generator/screens/generate.dart';

import 'screens/scan.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QR",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.amber,
                textColor: Colors.black,
                child: Text("SCAN"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Scan()));
                },
              ),
              RaisedButton(
                color: Colors.amber,
                textColor: Colors.black,
                child: Text("GENERATE"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Generate()));
                },
              )
            ],
          ),
        ));
  }
}
