import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/input.dart';

class EditYourProfile extends StatefulWidget {
  const EditYourProfile({Key? key}) : super(key: key);

  @override
  State<EditYourProfile> createState() => _EditYourProfileState();
}

class _EditYourProfileState extends State<EditYourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height70),
        child: Stack(
          children: [
            Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(text: "Edit Your \nProfile", color: Colors.white,size: Dimentions.font26,),
                    SizedBox(height: Dimentions.height30,),
                    Container(
                      width: Dimentions.logo100,
                      height: Dimentions.logo100,
                      child: Image(
                          image: AssetImage(
                              "assets/image/avatar_confirm.png"
                          )
                      ),
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Input(textHint: "Full Name"),
                    SizedBox(height: Dimentions.height20,),
                    Input(textHint: "Email Address"),
                    SizedBox(height: Dimentions.height20,),
                    Input(textHint: "Password"),
                    SizedBox(height: Dimentions.height20,),
                    Input(textHint: "Confirm Password"),
                    SizedBox(height: Dimentions.height30,),
                    Button(text: "Update My Profile", colortext: Colors.white, buttonColor: AppColors.button_final,left: Dimentions.width30,right: Dimentions.width30,top: Dimentions.height15, bottom: Dimentions.height15,)
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
