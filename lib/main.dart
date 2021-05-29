import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void btnGO() {
    setState(() {
      number += 1;
    });
  }

  void btnReset() {
    setState(() {
      number = 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget Demo - Eps6"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble())),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("GO GO GO!"),
              onPressed: btnGO,
            ),
            // ignore: deprecated_member_use
            RaisedButton(child: Text("RESET"), onPressed: btnReset)
          ],
        ),
      ),
    ));
  }
}
