import 'package:flutter/material.dart';
import 'package:lunettes/config/size_config.dart';

enum CustomButtonTheme { DARK, LIGHT }

class CustomButton extends StatefulWidget {
  final CustomButtonTheme customTheme;
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final Function onClick;
  CustomButton(
      {this.customTheme,
      this.text,
      this.width,
      this.height,
      this.onClick,
      this.fontSize});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        height: widget.height,
        width: widget.width,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  widget.customTheme == CustomButtonTheme.DARK
                      ? Color(0xFFBE1522)
                      : Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          1 * SizeConfig.heightMultiplier),
                      side: BorderSide(color: Color(0xFFBE1522))))),
          onPressed: () {
            widget.onClick();
          },
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: widget.customTheme == CustomButtonTheme.DARK
                    ? Colors.white
                    : Color(0xFFBE1522),
                fontSize: widget.fontSize == null
                    ? 2 * SizeConfig.textMultiplier
                    : widget.fontSize,
                fontFamily: 'roboto'),
          ),
        ),
      ),
    );
  }
}
