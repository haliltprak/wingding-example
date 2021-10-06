// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class ClipRRectGradient extends StatelessWidget {
  var child;
  double? height;
  double? width;
  ClipRRectGradient({
    Key? key,
    this.child,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Colors.purple,
              Colors.pink,
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
