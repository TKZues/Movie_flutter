import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';

class SelectYourFavoite extends StatefulWidget {
  const SelectYourFavoite({Key? key}) : super(key: key);

  @override
  State<SelectYourFavoite> createState() => _SelectYourFavoiteState();
}

class _SelectYourFavoiteState extends State<SelectYourFavoite> {
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

          ],
        ),
      ),
    );
  }
}
