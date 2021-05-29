import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("LATIHAN TEXTSTYLE - eps8"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 11)),
          Center(
            child: Text(
              "TEST GANTI FONT",
              style: TextStyle(
                  fontFamily: "SigmarOne",
                  fontSize: 25,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.red,
                  decorationThickness: 5,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text("Tambah"),
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "Data ke-" + counter.toString(),
                      style: TextStyle(fontSize: 35, fontFamily: "Nunito"),
                    ));
                    counter++;
                  });
                },
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text("Hapus"),
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
              )
            ],
          ),
          Column(
            children: widgets,
          )
        ],
      ),
    ));
  }
}
