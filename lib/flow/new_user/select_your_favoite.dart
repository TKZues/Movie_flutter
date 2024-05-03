import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/new_user/confirm_new_account.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button_favoite.dart';
import 'package:movie_flutter/widget/icon_button.dart';
import 'package:movie_flutter/widget/icon_category.dart';

class SelectYourFavoite extends StatefulWidget {
  const SelectYourFavoite({Key? key}) : super(key: key);

  @override
  State<SelectYourFavoite> createState() => _SelectYourFavoiteState();
}

class _SelectYourFavoiteState extends State<SelectYourFavoite> {

  void _navigateToConfirmNewAccount(){
    Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => ConfirmNewAccount(),)
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: AppColors.back,
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height30, bottom: Dimentions.height20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_outlined, color: Colors.white,),
            SizedBox(height: Dimentions.height20,),
            BigText(text: "Select Your \nFavoite Genre", color: Colors.white, textAlign: TextAlign.left,),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonFavoite(text: "Horor", ),
                ButtonFavoite(text: "Action", )
              ],
            ),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonFavoite(text: "Drama", ),
                ButtonFavoite(text: "War", )
              ],
            ),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonFavoite(text: "Crime", ),
                ButtonFavoite(text: "Crime", )
              ],
            ),
            SizedBox(height: Dimentions.height20,),
            BigText(text: "Select Your \nFavoite language", color: Colors.white, textAlign: TextAlign.left,),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonFavoite(text: "Bahasa", ),
                ButtonFavoite(text: "English", )
              ],
            ),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonFavoite(text: "Japanese",),
                ButtonFavoite(text: "Korean")
              ],
            ),
            SizedBox(height: Dimentions.height20,),
            IconForButton(icon: Icons.arrow_forward_outlined, backgroundColor: AppColors.button_final, color: Colors.white,onPressed: _navigateToConfirmNewAccount,)
          ],
        ),
      ),
    );
  }
}
