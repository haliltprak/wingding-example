import 'package:flutter/material.dart';
import 'package:wingdingtask/constants/constants.dart';
import 'package:wingdingtask/components/custom_list_view.dart';

class NewRichText extends StatelessWidget {
  const NewRichText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          WidgetSpan(
            child: Icon(
              Icons.location_on_outlined,
              size: 2.0 * SizeConfig.blockSizeVertical + 2,
              color: mainColor,
            ),
          ),
          TextSpan(
            text: 'Main Stage - Ushuaia',
            style: TextStyle(
              fontSize: 2.0 * SizeConfig.blockSizeVertical,
              fontWeight: FontWeight.bold,
              color: secondaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
