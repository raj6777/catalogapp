import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/drawer.dart';
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days=30;
    String name="codepur";
      return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App ",style: TextStyle(color: Colors.black87
          ),
          ),
        ),
        body: Center(
          child: Container(
            child: Text("welcome to $days days of flutter $name"),
          ),
        ),
        drawer: MyDrawer(

        ),
      );
  }
}
