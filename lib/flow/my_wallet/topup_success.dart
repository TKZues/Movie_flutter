import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/small_text.dart';

import '../../utils/dimensions.dart';

class TopUpSuccess extends StatefulWidget {
  const TopUpSuccess({Key? key}) : super(key: key);

  @override
  State<TopUpSuccess> createState() => _TopUpSuccessState();
}

class _TopUpSuccessState extends State<TopUpSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height70),
        child: Column(
          children: [
            Image(image: AssetImage(
              "assets/image/topup.png"
            )),
            BigText(text: "Yummy!", color: Colors.white),
            SizedBox(height: Dimentions.height20,),
            SmallText(text: "You have successful \ntop up the wallet", color: Colors.white70),
            SizedBox(height: Dimentions.height50,),
            Button(text: "My Wallet", colortext: Colors.white, buttonColor: AppColors.button_final, left: Dimentions.width30*2, right: Dimentions.width30*2,),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(text: "Discover new movie", color: Colors.white70),
                SmallText(text: "Back to home", color: Colors.blue)
              ],
            )
          ],
        ),
      ),
    );
  }
}
