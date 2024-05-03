import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/input.dart';

import '../../utils/dimensions.dart';
import '../../widget/button.dart';

class TopUp extends StatefulWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height70),
        child: Stack(
          children: [
            Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(text: "Top Up", color: Colors.white),
                    SizedBox(height: Dimentions.height50,),
                    Input(textHint: "Amount"),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18,),
                        ),
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18,),
                        ),
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18,),
                        ),
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18,),
                        ),
                        Container(
                          width: Dimentions.widthTopUp,
                          child: Button(text: "IDR 50.000", colortext: Colors.white70, buttonColor: AppColors.button, left: Dimentions.with20*2,right: Dimentions.with20*2,sizeText: Dimentions.font18),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimentions.height50,),
                    Button(text: "Top Up Now", colortext: Colors.white, buttonColor: AppColors.button,top: Dimentions.height20,bottom: Dimentions.height20,)
                  ],
                )
            ),
            Positioned(
                child: Icon(Icons.arrow_back, color: Colors.white,)
            )
          ],
        ),
      ),
    );
  }
}
