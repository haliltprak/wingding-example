// ignore: file_names

// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wingdingtask/components/my_switch.dart';
import 'package:wingdingtask/components/new_divider.dart';
import 'package:wingdingtask/components/buttons/rounded_button.dart';
import 'package:wingdingtask/components/input&password_fields/rounded_input_field_with_text.dart';
import 'package:wingdingtask/components/input&password_fields/rounded_password_field_with_text.dart';
import 'package:wingdingtask/screens/login/login_screen.dart';
import 'package:wingdingtask/screens/navigationbottombar.dart';

class SignUpScreenBody extends StatelessWidget {
  SignUpScreenBody({Key? key}) : super(key: key);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  kayitOl(context) {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(), password: password.text.trim());
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => NavigationBarExample()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              RoundedInputFieldwithText(
                controller: email,
                text: 'Email Address',
                hintText: 'mail@mail.com',
                icon: Icons.mail,
              ),
              RoundedPasswordFieldwithText(
                controller: password,
                text: 'Password',
                hintText: '8 character password',
                icon: Icons.lock,
                suffixicon: Icons.visibility,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: MySwitch(
                  isCheck: true,
                ),
              ),
              RoundedButton(
                press: () {
                  kayitOl(context);
                },
                text: 'Create Account',
                color: Colors.pink,
              ),
              NewDivider(),
              RoundedButton(
                press: () {},
                color: Colors.blue,
                icon: Icons.facebook,
                text: 'Continue with Facebook',
              ),
              RoundedButton(
                press: () {},
                color: Colors.red,
                icon: Icons.mail,
                text: 'Continue with Gmail',
              ),
              RoundedButton(
                press: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                },
                color: Colors.pink,
                icon: Icons.arrow_forward,
                text: 'Go Login Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
