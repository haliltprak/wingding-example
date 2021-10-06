// ignore_for_file: prefer_const_constructors, camel_case_types, sized_box_for_whitespace, import_of_legacy_library_into_null_safe

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wingdingtask/components/event.dart';
import 'package:wingdingtask/constants/constants.dart';
import 'package:wingdingtask/screens/explore/event_sheet.dart';

class MyCardItem {
  final String image;

  MyCardItem({required this.image});
}

class CustomListView extends StatefulWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<MyCardItem> mycarditems = items;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.45,
      // listview den dolayı overflow meydana gelebilir. Bunu gidermek için Column(Row)+SingleScrollView kullan
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        separatorBuilder: (context, _) => SizedBox(
          width: 12,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                context: context,
                builder: (context) => EventSheet(
                  myItem: mycarditems[index],
                ),
              );

              print('hey');
            },
            child: Event(
              myCardItem: mycarditems[index],
            ),
          );
        },
      ),
    );
  }
}

//text fontsize responsive tasarım için lazım olan class
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double blockSizeVertical = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = (screenWidth! / 100);
    blockSizeVertical = (screenHeight! / 100);
  }
}
