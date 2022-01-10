import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homepage.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  //const MyAPP({Key key}) : super(Key: Key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //home: homepage(),
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),

      initialRoute: MyRoutes.HomeRoute ,
      routes: {"/":(context) => loginpage(),
              MyRoutes.HomeRoute:(context)=>homepage(),
              MyRoutes.loginRoute:(context) => loginpage()
        }
      );
  }
}
