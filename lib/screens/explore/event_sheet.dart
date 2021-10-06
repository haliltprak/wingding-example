// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:wingdingtask/components/custom_list_view.dart';
import 'package:wingdingtask/constants/constants.dart';

class EventSheet extends StatelessWidget {
  MyCardItem myItem;
  EventSheet({
    Key? key,
    required this.myItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: Container(
        color: mainBackGroundColor,
        height: size.height * 0.8,
        child: Column(
          children: [
            Image.asset(myItem.image),
          ],
        ),
      ),
    );
  }
}
