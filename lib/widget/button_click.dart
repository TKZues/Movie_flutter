import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ButtonClick extends StatefulWidget {
  const ButtonClick({Key? key}) : super(key: key);

  @override
  State<ButtonClick> createState() => _ButtonClickState();
}

class _ButtonClickState extends State<ButtonClick> {
  late final String text;
  late double sizeText ;
  late final Color buttonColor;
  late final Color colortext;
  late double left;
  late double right;
  late double top;
  late double bottom;
  Color _buttonColor = Colors.blue;
  void _changeColor() {
    setState(() {
      _buttonColor = Colors.green; // Thay đổi màu thành màu xanh khi click
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        _changeColor;
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          foregroundColor: MaterialStateProperty.all(colortext),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>  (
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.only(left: left==0?(Dimentions.width30*3):left, right: right==0?Dimentions.width30*3:right, top: top==0?Dimentions.height10:top, bottom: bottom==0?Dimentions.height10:bottom),)
      ),
      child: Text(
          text,textAlign: TextAlign.center,
          style: TextStyle(
            color: colortext,
            fontSize: sizeText==0?Dimentions.font20:sizeText,
            overflow: TextOverflow.visible,
          )
      ),
    );;
  }
}
