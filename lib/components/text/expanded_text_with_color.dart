// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ExpandedTextwithColor extends StatelessWidget {
  String text;
  Color? color;
  ExpandedTextwithColor({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
