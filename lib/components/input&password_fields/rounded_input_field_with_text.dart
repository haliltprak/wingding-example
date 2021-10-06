// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/components/input&password_fields/rounded_input_field.dart';

class RoundedInputFieldwithText extends StatelessWidget {
  final String? text;
  final String? hintText;
  final IconData? icon;
  final IconData? suffixicon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  RoundedInputFieldwithText({
    Key? key,
    this.text,
    this.hintText,
    this.icon,
    this.suffixicon,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width * 0.8,
          child: Text(
            '$text',
            textAlign: TextAlign.left,
            //style: TextStyle(backgroundColor: Colors.blue),
          ),
        ),
        RoundedInputField(
          hintText: '$hintText',
          icon: icon,
          suffixicon: suffixicon,
          onChanged: onChanged,
          controller: controller,
        ),
      ],
    );
  }
}
