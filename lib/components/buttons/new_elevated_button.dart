import 'package:flutter/material.dart';

class NewElevatedButton extends StatelessWidget {
  final String? text;
  final Function() press;
  final Color? color, textColor;
  final IconData? icon;
  NewElevatedButton({
    this.text,
    required this.press,
    this.color = Colors.pink,
    this.textColor = Colors.white,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: press,
      icon: Icon(icon),
      label: Text(
        '$text',
        style: TextStyle(color: textColor),
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        textStyle: TextStyle(
            color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
