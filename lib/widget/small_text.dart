import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:movie_flutter/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  final double size;
  final TextOverflow textOverflow;

  SmallText({
    Key? key,
    required this.text,
    required this.color,
    this.size = 0,
    this.textOverflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size == 0 ? Dimentions.font16 : size,
        color: color,
        overflow: textOverflow,
      ),
    );
  }
}

