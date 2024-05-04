import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/my_wallet/home_mywallet.dart';
import 'package:movie_flutter/flow/my_wallet/topup_success.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button_click.dart';
import 'package:movie_flutter/widget/input.dart';
import 'package:movie_flutter/widget/topup_button.dart';

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
                        TopupButton(text: "IDR 50.000"),
                        TopupButton(text: "IDR 100.000"),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopupButton(text: "IDR 150.000"),
                        TopupButton(text: "IDR 200.000"),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopupButton(text: "IDR 250.000"),
                        TopupButton(text: "IDR 500.000"),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopupButton(text: "IDR 750.000"),
                        TopupButton(text: "IDR 1.000.000"),
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    GestureDetector(
                      child:Button(text: "Top Up Now", colortext: Colors.white, buttonColor: AppColors.button,top: Dimentions.height20,bottom: Dimentions.height20,),
                      onTap: () {
                        Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => TopUpSuccess(),)
                        );
                      }
                    )
                  ],
                )
            ),
            Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => HomeMyWallet(),)
                    );
                  },
                    child: Icon(Icons.arrow_back, color: Colors.white,)
                ),
            )
          ],
        ),
      ),
    );
  }
}
