import 'package:flutter/material.dart';

import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/small_text.dart';

import '../../utils/color.dart';
import '../../widget/BigText.dart';
import '../../widget/input.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController.addListener(updateButtonState);
    passwordController.addListener(updateButtonState);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void updateButtonState() {
    setState(() {
      isButtonEnabled = emailController.text.isEmpty && passwordController.text.isEmpty;
    });
  }


  @override
  Widget build(BuildContext context) {
    print("object"+ MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height20, bottom: Dimentions.height20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                  width: Dimentions.logo120,
                  height: Dimentions.logo120,
                  image: AssetImage(
                    "assets/image/logo.png",
                  )),
              BigText(text: "Welcome Back,\n Movie Lover!", color: Colors.white),
              SizedBox(height: Dimentions.height30,),
              Input(textHint: "Email Address", controller: emailController,),
              SizedBox(height: Dimentions.height30,),
              Input(textHint: "Password",controller: passwordController,),
              // GetAPI(),
              Container(
                width: double.maxFinite,
                  child: SmallText(
                    text: "Forgot Password?",
                    color: Colors.white,
                    textAlign: TextAlign.right,
                  )
              ),
              SizedBox(height: Dimentions.height20,),
              Button(text: "Login", colortext: Colors.white, buttonColor: isButtonEnabled ? const Color(0xff1b263b) : Colors.red),
              SizedBox(height: Dimentions.height20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: "Create new account? ", color: Colors.white),
                    SmallText(text: "Sign up", color: AppColors.mainColor)
                  ],
                ),
              ),
              SizedBox(height: Dimentions.height20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: Dimentions.logo50,
                      height: Dimentions.logo50,
                      padding: EdgeInsets.all(Dimentions.with10),
                      decoration: BoxDecoration(
                        color: Color(0xff1b263b),
                        borderRadius: BorderRadius.circular(Dimentions.radius20),
                      ),
                      child: Image(
                        image: AssetImage(
                          "assets/image/logogg.png",
                        ),
                      )
                    ),
                    SizedBox(width: Dimentions.width30,),
                    Container(
                        width: Dimentions.logo50,
                        height: Dimentions.logo50,
                        padding: EdgeInsets.all(Dimentions.with10),
                        decoration: BoxDecoration(
                          color: Color(0xff1b263b),
                          borderRadius: BorderRadius.circular(Dimentions.radius20),
                        ),
                        child: Image(
                          image: AssetImage(
                            "assets/image/logofb.png",
                          ),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
