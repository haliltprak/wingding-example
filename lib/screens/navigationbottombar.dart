// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/screens/explore/explore_screen.dart';
import 'package:wingdingtask/screens/foryou/for_you_screen.dart';
import 'package:wingdingtask/screens/profile/profile_screen.dart';
import 'package:wingdingtask/screens/wallet/wallet_screen.dart';

class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({Key? key}) : super(key: key);

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  int currentIndex = 1;

  final screens = [
    ExploreScreen(),
    ForYouScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white30,
        selectedItemColor: Color(0xffe63356),
        unselectedItemColor: Color(0xffa9abb9),
        currentIndex: currentIndex, elevation: 100,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'For You',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Wallet',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            //backgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
