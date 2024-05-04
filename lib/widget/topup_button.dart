import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/small_text.dart';

import '../utils/color.dart';
import '../utils/dimensions.dart';
import 'button.dart';

class TopupButton extends StatefulWidget {
  final String text;
  final Color? color;
  final VoidCallback? onPressed;
  TopupButton({Key? key, required this.text, this.onPressed, this.color}) : super(key: key);

  @override
  State<TopupButton> createState() => _ButtonFavoiteState();
}

class _ButtonFavoiteState extends State<TopupButton> {
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
          backgroundColor: _backgroundColor?AppColors.button_final:AppColors.button_default,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimentions.radius15),
          ),
        padding: EdgeInsets.only(left: Dimentions.width30, right: Dimentions.width30)
      ),
      child:
      Center(child: SmallText(text: widget.text, color: Colors.white70, textAlign: TextAlign.center,size: Dimentions.font20, )),
    );
  }
}



