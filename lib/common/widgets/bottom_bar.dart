import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiftcafe/features/home/widgets/Frostedglass.dart';
import 'package:swiftcafe/features/login/screens/LoginScreen.dart';

import '../../constants/global_variables.dart';
import '../../features/courses/screens/courses_screen.dart';
import '../../features/home/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const LoginScreen(),
    const CoursesScreen(),
    const Center(
      child: Text('Profile page'),
    ),
    const Center(
      child: Text('Profile page'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_page],
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            bottom: 30,
            left: 15,
            right: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: SizedBox(
                  height: 110,
                  child: BottomNavigationBar(
                    currentIndex: _page,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    elevation: 20,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    onTap: updatePage,
                    showSelectedLabels: true,
                    showUnselectedLabels: false,
                    selectedIconTheme: const IconThemeData(
                      size: 30,

                      color: Color.fromARGB(255, 212, 200,
                          200), // Set the selected icon color here
                    ),
                    unselectedIconTheme: const IconThemeData(
                      size: 30,
                      color: Colors.white, // Set the unselected icon color here
                    ),
                    items: [
                      BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            CupertinoIcons.home,
                          ),
                        ),
                        label: '',
                      ),
                      // Account
                      BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.person_2_outlined,
                          ),
                        ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.wallet,
                          ),
                        ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            CupertinoIcons.delete,
                          ),
                        ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.messenger_outline,
                          ),
                        ),
                        label: '',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
