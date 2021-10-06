// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/constants/constants.dart';
import 'package:wingdingtask/screens/foryou/for_you_body.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ForYouBody(),
          backgroundColor: mainBackGroundColor,
        ),
      ),
    );
  }
}
