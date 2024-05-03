import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/new_user/welcome.dart';
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
  void _navigateToWelcom(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Welcome(),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColors.back,
        body: Center(
          child: Container(
            width: Dimentions.widthExp,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(
                  "assets/image/logo.png"
                ), width: Dimentions.logo120,height: Dimentions.logo120,),
                SizedBox(height: Dimentions.height30),
                BigText(text: "New Experience", color: Colors.white,size: Dimentions.font26, ),
                SizedBox(height: Dimentions.height10,),
                SmallText(text: "Watch a new movie much easier than any before", color: Colors.white70,textAlign: TextAlign.center,),
                SizedBox(height: 60),
                Button(
                  text: "Get Started",
                  colortext: Colors.white,
                  buttonColor: Color(0xff0096c7),
                  left: Dimentions.width30*2,
                  right: Dimentions.width30*2,
                  top: Dimentions.height15,
                  bottom: Dimentions.height15,
                  onPressed: _navigateToWelcom),

              ],
            ),
          ),
        ),

    );
  }
}
