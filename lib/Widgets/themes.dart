import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme
{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily:GoogleFonts.poppins().fontFamily ,
      cardColor:Colors.white,
      canvasColor:creamColor,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black87),
        textTheme: Theme.of(context).textTheme
            .copyWith(headline6: context.textTheme.headline6!.copyWith(color: Colors.black),)
    ));

  static ThemeData darkTheme(BuildContext context)=>ThemeData(
      fontFamily:GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      cardColor:Colors.black87,
      canvasColor: darkcreamColor,
      buttonColor: lightBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color:Colors.white),
          textTheme: Theme.of(context).textTheme
              .copyWith(headline6: context.textTheme.headline6!.copyWith(color: Colors.white),)
      ));

  static Color creamColor=Color(0xfff5f5f5);
  static Color darkcreamColor=Vx.gray900;
  static Color darkBluishColor=Color(0xff403b58);
  static Color lightBluishColor=Vx.indigo500;
}
