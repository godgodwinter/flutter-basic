import 'package:flutter/material.dart';

void main() {
  runApp(MyApp4());
}

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyFlutter App Eps4"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Text 1"),
              Text("Text 2"),
              Text("Text 3"),
              Row(
                children: <Widget>[
                  Text("Text 4"),
                  Text("Text 5"),
                  Text("Text 6"),
                ],
              )
            ]),
      ),
    );
  }
}
