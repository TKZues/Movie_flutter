import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/input.dart';

class CreateNewYourAccount extends StatefulWidget {
  const CreateNewYourAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewYourAccount> createState() => _CreateNewYourAccountState();
}

class _CreateNewYourAccountState extends State<CreateNewYourAccount> {
  late TextEditingController nameController = TextEditingController();
  late TextEditingController addressController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController confirmController = TextEditingController();
  bool isButtonEnabled1 = true;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    nameController.addListener(updateButtonState1);
    addressController = TextEditingController();
    addressController.addListener(updateButtonState1);
    passwordController = TextEditingController();
    passwordController.addListener(updateButtonState1);
    confirmController = TextEditingController();
    confirmController.addListener(updateButtonState1);
  }

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  void updateButtonState1() {
    setState(() {
      isButtonEnabled1 = nameController.text.isEmpty && addressController.text.isEmpty && passwordController.text.isEmpty && confirmController.text.isEmpty ;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:  AppColors.back,
      body: Padding(
        padding: EdgeInsets.only(right: Dimentions.with20, left: Dimentions.with20, top: Dimentions.height70, bottom: Dimentions.height30),
        child: Stack(
          children: [
            Positioned(
                child: Container(
                  width: double.maxFinite,
                  height: Dimentions.screenHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BigText(text: "Create New \n Your Account", color: Colors.white, textAlign: TextAlign.center,),
                        SizedBox(height: Dimentions.height50,),
                        Image(
                          width: Dimentions.logo50,
                          height: Dimentions.logo50,
                          image: AssetImage(
                              "assets/image/user-avatar.png"
                          ),
                        ),
                        SizedBox(height: Dimentions.height50,),
                        Input(textHint: "Full Name", controller: nameController,),
                        SizedBox(height: Dimentions.height20,),
                        Input(textHint: "Email Adress", controller: addressController,),
                        SizedBox(height: Dimentions.height20,),
                        Input(textHint: "Password", controller: passwordController,),
                        SizedBox(height: Dimentions.height20,),
                        Input(textHint: "Confirm password", controller: confirmController,),
                        SizedBox(height: Dimentions.height20,),
                        Button(text: "Sign In", colortext: Colors.white, buttonColor: isButtonEnabled1?AppColors.button: Color(0xff003f88) )
                      ],
                    ),
                  ),
                )
            ),
            Positioned(child: Icon(Icons.arrow_back_outlined, color: Colors.white,weight: 900 ,)),

          ],
        ),
      ),
    );
  }
}
