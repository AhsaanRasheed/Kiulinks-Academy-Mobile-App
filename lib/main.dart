import 'package:flutter/material.dart';
import 'package:kiulinks_app/Views/navBar.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  ThemeData theme() {
    final baseTheme = ThemeData(
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        headline3: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:
                5.5 * SizeConfig.blockSizeVertical), //for gift screen title
        headline2: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontSize: 2.8 * SizeConfig.blockSizeVertical,
            fontWeight: FontWeight.w800), //for gift screen subtitle
        headline1: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontSize: 3.5 * SizeConfig.blockSizeVertical,
            fontWeight: FontWeight.w800), //for home screen heading and cards
        headline5: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
          fontSize: 2.1 * SizeConfig.blockSizeVertical,
        ), //for no notification text in gift and notifications screens
      ),
    );
    return baseTheme.copyWith(
      primaryColor: Color(hexColor('#EAF2FF')),
      buttonColor: Color(hexColor('#A700FA')),
      focusColor: Color(hexColor('#A700FA')),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KiuLinks Academy',
      home: Navigation(),
    );
  }
}
