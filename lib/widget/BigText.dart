import 'package:flutter/cupertino.dart';
import 'package:movie_flutter/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  TextOverflow textOverflow;
  final TextAlign textAlign;
   BigText({Key? key, required this.text, required this.color, this.size = 0,this.textOverflow = TextOverflow.ellipsis,  this.textAlign =  TextAlign.center  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: size==0?Dimentions.font20:size,
        color: color,
        overflow: textOverflow,
        fontWeight: FontWeight.w500
      ),

    );
  }
}
