// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/components/text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final IconData? icon;
  final IconData? suffixicon;
  final String? hintText;
  final TextEditingController? controller;
  RoundedPasswordField({
    Key? key,
    this.onChanged,
    this.icon,
    this.suffixicon,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: Icon(
            widget.icon,
            color: Colors.pink,
          ),
          suffixIcon: IconButton(
            icon: Icon(widget.suffixicon),
            color: Colors.pink,
            onPressed: () {
              /*setState(() {
                _obscureText = !_obscureText;
              });*/
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
