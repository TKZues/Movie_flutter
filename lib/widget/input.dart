import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/dimensions.dart';

import '../utils/color.dart';

class Input extends StatelessWidget {
  final String textHint;
  final TextEditingController? controller;

    Input({Key? key, required this.textHint, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.height70,
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white, fontSize: Dimentions.font16),
        decoration: InputDecoration(
          hintText: textHint,
          hintStyle: TextStyle(color: Colors.white, fontSize: Dimentions.font16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Dimentions.radius20)),
            borderSide: BorderSide(color: Colors.white, width: Dimentions.width2),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(Dimentions.radius20)),
              borderSide: BorderSide(color: AppColors.outline, width: Dimentions.width2)
          ),
        ),
      ),
    );
  }
}
