import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lunettes/driver/custom/sample_custom_button.dart';
import 'package:lunettes/config/size_config.dart';
import 'package:lunettes/constants/app_const.dart';
import 'dart:io';

class SampleAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset('assets/tour_cancelled.png',
          height: 20 * SizeConfig.heightMultiplier,
          width: 20 * SizeConfig.widthMultiplier),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Sample Modal',
              style: TextStyle(
                fontFamily: 'roboto',
                fontSize: Constants.textSizeBig,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          CustomButton(
            customTheme: CustomButtonTheme.DARK,
            text: "Yes",
            fontSize: Constants.textSizeHuge,
            height: 6 * SizeConfig.heightMultiplier,
            width: 100 * SizeConfig.widthMultiplier,
            onClick: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          CustomButton(
            customTheme: CustomButtonTheme.LIGHT,
            text: "No",
            fontSize: Constants.textSizeHuge,
            height: 6 * SizeConfig.heightMultiplier,
            width: 100 * SizeConfig.widthMultiplier,
            onClick: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
