import 'package:flutter/material.dart';
import 'package:movie_flutter/effect/choose_datetime/list_date.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/icon_category.dart';
import 'package:movie_flutter/widget/icon_select.dart';
import 'package:movie_flutter/widget/input.dart';

import '../../../effect/choose_datetime/list_central.dart';

class HomeDatetime extends StatefulWidget {
  const HomeDatetime({Key? key}) : super(key: key);

  @override
  State<HomeDatetime> createState() => _ChooseDatetimeState();
}

class _ChooseDatetimeState extends State<HomeDatetime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height50),
        child: Stack(
          children: [
            Positioned(
                child: Column(
                  children: [
                    SizedBox(

                      child: BigText(text: "Ralp Breaks the \nInternet", color: Colors.white, textAlign: TextAlign.center,),
                      width: double.maxFinite,
                    ),
                    Input(textHint: "Select Your Country"),
                    SizedBox(
                      child: BigText(text: "Choose Date", color: Colors.white, textAlign: TextAlign.left,),
                      width: double.maxFinite,
                    ),
                    SizedBox(
                      height: Dimentions.height50*2,
                      child: ListDate(),
                    ),
                    SizedBox(
                      child: BigText(text: "Central Park CGV", color: Colors.white, textAlign: TextAlign.left,),
                      width: double.maxFinite,
                    ),
                    SizedBox(
                      height: Dimentions.height70,
                      child: ListCentral(),
                    ),
                    SizedBox(
                      child: BigText(text: "FX Sudirman XXI", color: Colors.white, textAlign: TextAlign.left,),
                      width: double.maxFinite,
                    ),
                    SizedBox(
                      height: Dimentions.height70,
                      child: ListCentral(),
                    ),
                    SizedBox(
                      child: BigText(text: "Kelapa Galing IMAX", color: Colors.white, textAlign: TextAlign.left,),
                      width: double.maxFinite,
                    ),
                    SizedBox(
                      height: Dimentions.height70,
                      child: ListCentral(),
                    ),
                    IconCategory(icon: Icons.arrow_forward_outlined, background: AppColors.button)
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
