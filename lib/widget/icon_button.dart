import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/dimensions.dart';
import 'BigText.dart';

class IconForButton extends StatefulWidget {
  final Color backgroundColor;
  final Color? color;
  final IconData icon;
  final VoidCallback? onPressed;
  IconForButton({Key? key,  this.onPressed, this.color, required this.icon, required this.backgroundColor}) : super(key: key);

  @override
  State<IconForButton> createState() => _ButtonFavoiteState();
}

class _ButtonFavoiteState extends State<IconForButton> {
  // bool _backgroundColor = false;
  //
  // void _changColor(){
  //   setState(() {
  //     _backgroundColor = !_backgroundColor;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(Dimentions.height70, Dimentions.height70),
          backgroundColor: widget.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimentions.height70/2),
          )
      ),
      child:Icon(widget.icon, color: widget.color,)
    );
  }
}




