import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/small_text.dart';

class ConfirmNewAccount extends StatefulWidget {
  const ConfirmNewAccount({Key? key}) : super(key: key);

  @override
  State<ConfirmNewAccount> createState() => _ConfirmNewAccountState();
}

class _ConfirmNewAccountState extends State<ConfirmNewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(top: Dimentions.height70, left: Dimentions.height30, right: Dimentions.height30),
        child: Stack(
          children: [
            Positioned(
                child: Column(
                  children: [
                    BigText(text: "Confirm New \nAccount", color: Colors.white,),
                    SizedBox(height: Dimentions.height70,),
                    Image(
                        image: AssetImage(
                          "assets/image/avatar_confirm.png"
                        )
                    ),
                    SizedBox(height: Dimentions.height30,),
                    SmallText(text: "Welcome", color: Colors.white70),
                    SizedBox(height: Dimentions.height10,),
                    BigText(text: "Arya Wijaya", color: Colors.white),
                    SizedBox(height: Dimentions.height50,),
                    Button(
                      text: "Create My Account",
                      colortext: Colors.white,
                      buttonColor: AppColors.button,
                      sizeText: Dimentions.font16,
                      left: Dimentions.width30,
                      right: Dimentions.width30,
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
