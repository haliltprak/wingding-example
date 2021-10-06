// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wingdingtask/screens/foryou/for_you_screen.dart';
import 'package:wingdingtask/components/custom_list_view.dart';
import 'package:wingdingtask/screens/login/login_screen.dart';
import 'package:wingdingtask/screens/navigationbottombar.dart';
import 'package:wingdingtask/screens/signup/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: SignUpScreen(),
        backgroundColor: Color(0xfff4f4fe),
      ),
    );
  }
}
