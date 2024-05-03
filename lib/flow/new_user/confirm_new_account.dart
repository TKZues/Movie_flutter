import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/order_ticket/find_best/home_login.dart';
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
  void _navigateToHomeLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLogin(),));
  }
  
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
                    BigText(text: "Confirm New \nAccount", color: Colors.white,size: Dimentions.font26,),
                    SizedBox(height: Dimentions.height70,),
                    Container(
                      width: double.maxFinite,
                      height: Dimentions.logo100*2,
                      child: Image(
                          image: AssetImage(
                            "assets/image/avatar_confirm.png",
                          )
                      ),
                    ),
                    SizedBox(height: Dimentions.height30,),
                    SmallText(text: "Welcome", color: Colors.white70),
                    SizedBox(height: Dimentions.height10,),
                    BigText(text: "Arya Wijaya", color: Colors.white),
                    SizedBox(height: Dimentions.height50*2,),
                    Button(
                      text: "Create My Account",
                      colortext: Colors.white70,
                      buttonColor: AppColors.button_final,
                      sizeText: Dimentions.font20,
                      left: Dimentions.width30,
                      right: Dimentions.width30,
                      top: Dimentions.height15,
                      bottom: Dimentions.height15,
                      onPressed: _navigateToHomeLogin,
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
