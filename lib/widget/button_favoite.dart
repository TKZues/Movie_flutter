import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/dimensions.dart';
import 'BigText.dart';

class ButtonFavoite extends StatefulWidget {
  final String text;
  final Color? color;
  final VoidCallback? onPressed;
  ButtonFavoite({Key? key, required this.text, this.onPressed, this.color}) : super(key: key);

  @override
  State<ButtonFavoite> createState() => _ButtonFavoiteState();
}

class _ButtonFavoiteState extends State<ButtonFavoite> {
  bool _backgroundColor = false;

  void _changColor(){
    setState(() {
      _backgroundColor = !_backgroundColor;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _changColor,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(Dimentions.height30*4, Dimentions.height30*1.7),
          backgroundColor: _backgroundColor?Colors.red:AppColors.button_default,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimentions.radius15),
          )
        ),
        child:
          Center(child: BigText(text: widget.text, color: Colors.white, textAlign: TextAlign.center,)),
        );
  }
}


