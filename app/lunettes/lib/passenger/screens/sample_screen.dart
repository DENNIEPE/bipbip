import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lunettes/config/size_config.dart';
import 'package:lunettes/constants/app_const.dart';
import 'package:lunettes/passenger/custom/sample_custom_button.dart';

import '../widgets/sample_widget.dart';

class SampleScreen extends StatefulWidget {
  @override
  _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Constants.darkRed),
          centerTitle: true,
          title: Text(
            "Sample Main Screen",
            style: Constants.appBarTitle,
          ),
        ),
        body: SingleChildScrollView(
          physics: new ClampingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: 3 * SizeConfig.widthMultiplier),
            padding: EdgeInsets.symmetric(
                horizontal: 3 * SizeConfig.widthMultiplier,
                vertical: 2 * SizeConfig.heightMultiplier),
            child: Form(
              autovalidateMode: AutovalidateMode.disabled,
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20 * SizeConfig.heightMultiplier,
                  ),
                  CustomButton(
                    customTheme: CustomButtonTheme.DARK,
                    text: "Show Modal",
                    fontSize: Constants.textSizeHuge,
                    height: 6 * SizeConfig.heightMultiplier,
                    width: 100 * SizeConfig.widthMultiplier,
                    onClick: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SampleAlert();
                        },
                      );
                    },
                  ),
                  SizedBox(height: 15.0),
                  CustomButton(
                    customTheme: CustomButtonTheme.DARK,
                    text: "Show Map Screen",
                    fontSize: Constants.textSizeHuge,
                    height: 6 * SizeConfig.heightMultiplier,
                    width: 100 * SizeConfig.widthMultiplier,
                    onClick: () {
                      Navigator.pushNamed(context, '/sample_map_screen')
                          .then((_) {
                        setState(() {});
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
