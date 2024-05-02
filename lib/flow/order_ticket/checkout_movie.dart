import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/button_favoite.dart';
import 'package:movie_flutter/widget/icon_category.dart';
import 'package:movie_flutter/widget/icon_select.dart';

import '../../utils/dimensions.dart';
import '../../widget/small_text.dart';

class CheckoutMovie extends StatefulWidget {
  const CheckoutMovie({Key? key}) : super(key: key);

  @override
  State<CheckoutMovie> createState() => _CheckoutMovieState();
}

class _CheckoutMovieState extends State<CheckoutMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height50),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.maxFinite,
                   child:  BigText(text: "Checkout \nMovie", color: Colors.white, textAlign: TextAlign.center,)
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/image/comingsoon3.png",
                      width: Dimentions.logo100*1.5,

                    ),
                    SizedBox(width: Dimentions.with10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),

                            SmallText(text: "(4.7)", color: Colors.white70,size: Dimentions.font12,)
                          ],
                        ),
                        SmallText(text: "Rich Moore, Phil Johnston", color: Colors.white70, size: Dimentions.font12,)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  height: Dimentions.height10/10,
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "ID Order", color: Colors.white70),
                    SmallText(text: "22081996", color: Colors.white)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "Cinema", color: Colors.white70),
                    SmallText(text: "FX Sudiman XXI", color: Colors.white)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "Date & Time", color: Colors.white70),
                    SmallText(text: "Sun May 22, 16:40", color: Colors.white)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "Seat Number", color: Colors.white70),
                    SmallText(text: "D7,D8,D9", color: Colors.white)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "Price", color: Colors.white70),
                    SmallText(text: "Rp 50.000x3", color: Colors.white)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "Total", color: Colors.white70),
                    SmallText(text: "Rp 150.000", color: Colors.white)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  height: Dimentions.height10/10,
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: "Your Wallet", color: Colors.white70),
                    SmallText(text: "IDR 200.000", color: Colors.blueAccent)
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Button(text: "Checkout", colortext: Colors.white, buttonColor: Colors.blueAccent)
              ],
            ),
            Icon(Icons.arrow_back_outlined, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
