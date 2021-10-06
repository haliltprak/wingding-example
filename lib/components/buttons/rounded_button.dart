// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:wingdingtask/components/buttons/new_elevated_button.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final void Function() press;
  final Color? color, textColor;
  final IconData? icon;
  RoundedButton({
    this.text,
    required this.press,
    this.color = Colors.pink,
    this.textColor = Colors.white,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: NewElevatedButton(
          text: text,
          icon: icon,
          press: press,
          color: color,
          textColor: textColor,
        ),
      ),
    );
  }
}
