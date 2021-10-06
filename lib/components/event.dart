// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wingdingtask/components/cliprrect_gradient.dart';
import 'package:wingdingtask/components/text/expanded_text_with_color.dart';
import 'package:wingdingtask/components/text/new_rich_text.dart';
import 'package:wingdingtask/constants/constants.dart';
import 'package:wingdingtask/components/custom_list_view.dart';

class Event extends StatelessWidget {
  MyCardItem myCardItem;
  Event({
    Key? key,
    required this.myCardItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);

    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        direction: Axis.vertical,
        children: [
          Container(
            color: Colors.blue,
            height: size.height * 0.3,
            width: size.width * 0.7,
            alignment: Alignment.topCenter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Material(
                    child: Ink.image(
                      height: size.height * 0.3,
                      alignment: Alignment.topCenter,
                      image: AssetImage(myCardItem.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 70,
                    width: size.width * 0.7,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRectGradient(
                          height: 30,
                          child: Text(
                            'VIP ONLY',
                            style: TextStyle(
                              color: primaryTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ClipRRectGradient(
                          height: 50,
                          width: 50,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              ExpandedTextwithColor(
                                text: '1',
                                color: primaryTextColor,
                              ),
                              ExpandedTextwithColor(
                                color: primaryTextColor,
                                text: 'DEC',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            color: containerBackGroundColor,
            width: size.width * 0.7,
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Grand Opening',
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 2.0 * SizeConfig.blockSizeVertical + 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      // color: Colors.blue[100],
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: RichText(
                        text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                size: 2.0 * SizeConfig.blockSizeVertical + 6,
                                color: Color(0xffeea053),
                              ),
                            ),
                            TextSpan(
                              text: '4.8',
                              style: TextStyle(
                                fontSize:
                                    2.0 * SizeConfig.blockSizeVertical + 4,
                                fontWeight: FontWeight.bold,
                                color: primaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    NewRichText(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
