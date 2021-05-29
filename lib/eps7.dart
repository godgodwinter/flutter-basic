import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String pesan = "ini adalah text";
  String pesanDefault = "ini adalah text";

  // void btnGO() {
  //   setState(() {
  //     pesan = "Tombol sudah ditekan";
  //   });
  // }

  void btnReset() {
    setState(() {
      pesan = pesanDefault;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Method - Eps7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(pesan, style: TextStyle(fontSize: 15)),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("GO GO GO!"),
              onPressed: () {
                setState(() {
                  pesan = "Tombol sudah ditekan";
                });
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(child: Text("RESET"), onPressed: btnReset)
          ],
        ),
      ),
    ));
  }
}
