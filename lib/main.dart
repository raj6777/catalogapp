import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  //const MyAPP({Key key}) : super(Key: Key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
          child: Center(
            child: Container(
              child: Text("welcome to 30days of flutter"),
            ),
          ),
        ),
      );
  }
}
