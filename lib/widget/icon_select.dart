import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/small_text.dart';

class IconSelect extends StatelessWidget {
  final IconData icon;
   double size;
  final String text;
  IconSelect({Key? key, required this.icon, required this.text, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white70,
          size: size==0?Dimentions.font26:size,
        ),
        SizedBox(height: Dimentions.height10/2,),
        SmallText(text: text, color: Colors.white70, size: Dimentions.font10,)
      ],
    );
  }
}
