// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wingdingtask/components/new_divider.dart';
import 'package:wingdingtask/components/buttons/rounded_button.dart';
import 'package:wingdingtask/components/input&password_fields/rounded_input_field.dart';
import 'package:wingdingtask/components/input&password_fields/rounded_password_field.dart';
import 'package:wingdingtask/screens/navigationbottombar.dart';
import 'package:wingdingtask/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Body({Key? key}) : super(key: key);

  girisYap(context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text);
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => NavigationBarExample()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              RoundedInputField(
                controller: email,
                hintText: 'mail@mail.com',
                onChanged: (value) {},
                icon: Icons.mail,
              ),
              RoundedPasswordField(
                controller: password,
                onChanged: (value) {},
                hintText: '8 charachter password',
                icon: Icons.password,
                suffixicon: Icons.visibility,
              ),
              RoundedButton(
                color: Colors.pink,
                text: 'Create account',
                textColor: Colors.white,
                press: () {
                  girisYap(context);
                },
              ),
              NewDivider(),
              RoundedButton(
                text: 'Sign in with Facebook',
                textColor: Colors.white,
                color: Colors.blue,
                press: () {},
                icon: Icons.facebook,
              ),
              RoundedButton(
                press: () {},
                text: 'Sign in with Gmail',
                textColor: Colors.white,
                color: Colors.red,
                icon: Icons.mail,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Don\'t have an Account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                          (route) => false);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
