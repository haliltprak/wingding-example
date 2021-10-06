import 'package:flutter/material.dart';
import 'package:wingdingtask/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final IconData? suffixicon;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  RoundedInputField({
    Key? key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.suffixicon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.pink,
          ),
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: Icon(
            suffixicon,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
