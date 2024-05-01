import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/dimensions.dart';

class Button extends StatelessWidget {
    final String text;
   double sizeText ;
   final Color buttonColor;
   final Color colortext;
    double left;
    double right;
    double top;
    double bottom;
   Button({Key? key, required this.text, required this.colortext, this.sizeText = 0, required this.buttonColor, this.left = 0, this.right = 0, this.top=0, this.bottom=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            foregroundColor: MaterialStateProperty.all(colortext),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>  (
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.only(left: left==0?(Dimentions.width30*3):left, right: right==0?Dimentions.width30*3:right, top: Dimentions.height10, bottom: Dimentions.height10),)
          ),
          child: Text(
          text,
          style: TextStyle(
            color: colortext,
            fontSize: sizeText==0?Dimentions.font20:sizeText
          )
        ),
      );
  }
}
