import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/dimensions.dart';

class Button extends StatelessWidget {
    final String text;
   double sizeText ;
   final Color buttonColor;
   final Color colortext;
   Button({Key? key, required this.text, required this.colortext, this.sizeText = 0, required this.buttonColor}) : super(key: key);

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
              EdgeInsets.only(left: Dimentions.width30*3, right: Dimentions.width30*3, top: Dimentions.height10, bottom: Dimentions.height10),)
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
