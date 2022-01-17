import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/Widgets/drawer.dart';
import 'package:flutter_catalog/Widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/Widgets/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/Widgets/item_widget.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
//import 'package:flutter_catalog/home_widgets/catalog_header.dart';
//import 'package:flutter_catalog/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';

import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/models/catalog.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int days = 30;
  String name = "codepur";

  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(catalogJson.toString());
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart=(VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder<MyStore>(
        mutations: {AddMutation,RemoveMutation},
        builder:(context,store,status)=> FloatingActionButton(onPressed: (){
          Navigator.pushNamed(context, MyRoutes.cartRoute);

        },
          backgroundColor: context.theme.buttonColor ,
        child: Icon(CupertinoIcons.cart,
          color: Colors.white
          ,),
        ).badge(color: Vx.red500,size:22,count: _cart.items.length,textStyle: TextStyle(
          color: Colors.black87,fontWeight: FontWeight.bold,
        )),
      ),
      body:SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      )

    );
  }
}



