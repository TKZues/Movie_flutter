import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/small_text.dart';

class Promo extends StatelessWidget {
  final String name;
  final String descript;
  final String value;
   Promo({Key? key, required this.name, required this.descript, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimentions.with10, bottom: Dimentions.with10),
      padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.with20, bottom: Dimentions.with20),
      decoration: BoxDecoration(
        color: AppColors.outline,
        borderRadius: BorderRadius.circular(Dimentions.with20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: name, color: Colors.white70, size: Dimentions.font16,),
              SmallText(text: descript, color: Colors.white70, size: Dimentions.font20/2,)
            ],
          ),
          BigText(text: value, color: Colors.white70)
        ],
      ),
    );
  }
}
