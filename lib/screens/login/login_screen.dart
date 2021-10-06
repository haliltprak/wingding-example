// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:wingdingtask/screens/login/body.dart';
import 'package:wingdingtask/screens/signup/signup_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
