// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewDivider extends StatelessWidget {
  const NewDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.fromLTRB(0, size.height * 0.05, 0, size.height * 0.05),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Divider(
              endIndent: 20,
            ),
          ),
          Text('OR'),
          Expanded(
            child: Divider(
              indent: 20,
            ),
          ),
        ],
      ),
    );
  }
}
