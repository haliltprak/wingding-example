// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wingdingtask/components/buttons/rounded_button.dart';
import 'package:wingdingtask/constants/constants.dart';
import 'package:wingdingtask/components/custom_list_view.dart';
import 'package:wingdingtask/screens/login/login_screen.dart';

class ForYouBody extends StatelessWidget {
  const ForYouBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'Events you might like',
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: primaryTextColor2,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
            width: double.infinity,
            child: Text(
              'Because you\'ve attended Techno Bunker',
              style: TextStyle(fontSize: 19, color: secondaryTextColor),
            ),
          ),
          CustomListView(),
          RoundedButton(
            press: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false)},
            text: 'Exit',
          ),
        ],
      ),
    );
  }
}
