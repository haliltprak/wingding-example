// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/screens/signup/signup_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: EdgeInsets.all(20),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SignUpScreenBody(),
        ),
      ),
    );
  }
}
