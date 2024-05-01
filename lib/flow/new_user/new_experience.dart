import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/input.dart';
import 'package:movie_flutter/widget/small_text.dart';

class NewExperience extends StatefulWidget {
  const NewExperience({Key? key}) : super(key: key);

  @override
  State<NewExperience> createState() => _NewExperienceState();
}

class _NewExperienceState extends State<NewExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColors.back,
        body: Center(
          child: Container(
            width: 200,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(
                  "assets/image/logo.png"
                ), width: 100,height: 100,),
                SizedBox(height: 10),
                BigText(text: "New Experience", color: Colors.white, ),
                SmallText(text: "Watch a new movie much easier than any before", color: Colors.white70,textAlign: TextAlign.center,),
                SizedBox(height: 60),
                Button(text: "Get Started", colortext: Colors.white, buttonColor: AppColors.mainColor),

              ],
            ),
          ),
        ),

    );
  }
}
