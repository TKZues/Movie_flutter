import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/small_text.dart';

class Chair extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  Chair({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  State<Chair> createState() => _ChairState();
}

class _ChairState extends State<Chair> {
  bool _backgroundColor = false;
  void _changeColor(){
    setState(() {
      _backgroundColor = !_backgroundColor;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _changeColor,
        child: SmallText(text: widget.text, color: Colors.white70, textAlign: TextAlign.center,size: Dimentions.font12,),
        style:ElevatedButton.styleFrom(
          padding: EdgeInsets.only(left: Dimentions.with10/2, right: Dimentions.with10/2, top: Dimentions.height20, bottom: Dimentions.height20),
          backgroundColor: _backgroundColor?AppColors.button_final:AppColors.button_default,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimentions.radius15)
          )
        )
        );
  }
}
