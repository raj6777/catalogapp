import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/homepage.dart';
import 'package:flutter_catalog/Widgets/themes.dart';

void main() {
  runApp(VxState(
      store: MyStore(),
      child: MyApp(),
      ));
}
class MyApp extends StatelessWidget {
  //const MyAPP({Key key}) : super(Key: Key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: homepage(),
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),

        initialRoute: MyRoutes.loginRoute,
        routes: {"/":(context) => loginpage(),
          MyRoutes.HomeRoute:(context)=>homepage(),
          MyRoutes.loginRoute:(context) => loginpage(),
          MyRoutes.cartRoute:(context) => CartPage(),

        }
    );
  }
}
