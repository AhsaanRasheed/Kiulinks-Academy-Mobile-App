// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiulinks_app/Views/account_screen.dart';
import 'package:kiulinks_app/Views/home_screen.dart';
import 'package:kiulinks_app/Views/library_screen.dart';
import 'package:kiulinks_app/Views/notification_screen.dart';
import 'package:kiulinks_app/Views/plans_screen.dart';
import 'package:kiulinks_app/utilities/SizeConfig.dart';

// ignore: use_key_in_widget_constructors
class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}
class _NavigationState extends State<Navigation> {

  final List<Widget> pages = [
    plans(),
    library_screen(),
    home(),
    notifications(),
    account(),
  ];
  int selectedPageIndex = 2;
  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(hexColor("#EAF2FF")),
        body: pages[selectedPageIndex],
        bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Colors.white),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.083,
              child: BottomNavigationBar(
                onTap: selectPage,
                unselectedItemColor: Colors.black45,
                backgroundColor: Colors.black,
                currentIndex: selectedPageIndex,
                selectedItemColor: Colors.black,
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/plans icon.png"), size: 6 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/library icon.png"), size: 5.5 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/home icon.png"), size: 5.5 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/notif icon.png"), size: 5.5 * SizeConfig.blockSizeHorizontal),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/profile icon.png"), size: 5.5 * SizeConfig.blockSizeHorizontal),
                      label: '')
                ],
              ),
            )
          // } else {
          //   return Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }

        ));

    // if (islandScape) return Scaffold(body: pieChart());
  }
}
