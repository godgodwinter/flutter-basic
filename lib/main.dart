import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyFlutter App"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 250,
                height: 50,
                child: Text(
                  'HELLO NOOOB! Im trying improve my flutter skill!',
                  overflow: TextOverflow.ellipsis, //jika terpotong akan ada ...
                  maxLines: 2, //jumlah max ke bawah
                  softWrap: true, //jika false maka tidak akan di wrap ke bawah
                  textAlign: TextAlign.center, //posision rata kiri tengah kanan
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ))),
      ),
    );
  }
}
