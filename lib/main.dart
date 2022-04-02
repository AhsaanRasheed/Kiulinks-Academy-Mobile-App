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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline2: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold ,fontSize: 5.5 * SizeConfig.blockSizeVertical), //for gift screen title
          headline3: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 2.5* SizeConfig.blockSizeVertical,), //for gift screen subtitle
          headline4: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 2.3 * SizeConfig.blockSizeVertical, fontWeight: FontWeight.w800), //for home screen cards main text
          headline5: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 2* SizeConfig.blockSizeVertical,), //for no notification text in gift and notifications screens
        ),
        primaryColor: Color(hexColor('#A700FA')),
        buttonColor: Color(hexColor('#76C734')),
        focusColor: Color(hexColor('#A700FA')),
      ),
      title: 'KiuLinks Academy',
      home: navigation(),
    );
  }
}

