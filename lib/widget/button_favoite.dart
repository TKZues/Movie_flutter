import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/dimensions.dart';
import 'BigText.dart';

class ButtonFavoite extends StatelessWidget {
  final String text;

  const ButtonFavoite({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimentions.height30*4,
      height: Dimentions.height30*2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimentions.radius15),
        color: AppColors.button,
      ),
      child:
      Center(child: BigText(text: text, color: Colors.white, textAlign: TextAlign.center,)),
    );
  }
}
