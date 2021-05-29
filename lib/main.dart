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
        title: Text("Latian ListView"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("Tambah"),
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "Data ke-" + counter.toString(),
                      style: TextStyle(fontSize: 35),
                    ));
                    counter++;
                  });
                },
              ),
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
