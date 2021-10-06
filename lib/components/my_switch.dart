// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/constants/constants.dart';

class MySwitch extends StatelessWidget {
  final bool isCheck;
  MySwitch({
    Key? key,
    this.isCheck = false,
  }) : super(key: key);

  void toogleSwitch(bool value) {
    if (isCheck) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: isCheck,
          onChanged: (value) {},
          activeColor: Colors.pink,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: primaryTextColor2),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextSpan(
                  text: 'By signin up, I accept ',
                ),
                TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(decoration: TextDecoration.underline)),
                TextSpan(
                  text: ' and ',
                ),
                TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
