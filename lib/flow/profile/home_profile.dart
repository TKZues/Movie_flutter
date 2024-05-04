import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/profile/edit_your_profile.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/dotted_line.dart';
import 'package:movie_flutter/widget/small_text.dart';

import '../../utils/dimensions.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  State<HomeProfile> createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
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
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: Dimentions.width30*4, right: Dimentions.width30*4, top: Dimentions.height70),
                      child: Image(
                          image: AssetImage(
                              "assets/image/avatar_confirm.png"
                          )
                      ),
                    ),
                    SizedBox(height: Dimentions.height30,),
                    BigText(text: "Arya Wijaya", color: Colors.white),
                    SizedBox(height: Dimentions.height10,),
                    SmallText(text: "Awdadaqwdagw@gmail.com", color: Colors.white70),
                    SizedBox(height: Dimentions.height30,),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.supervised_user_circle_sharp, color: Colors.blue,),
                              SizedBox(width: Dimentions.with10/2,),
                              GestureDetector(
                                child: SmallText(text: "Edit Profile", color: Colors.white,size: Dimentions.font18,),
                                onTap: () {
                                  Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => EditYourProfile(),)
                                  );
                                },
                              )
                            ],
                          ),
                          SizedBox(height: Dimentions.height30/2,),
                          DashedLine(height: 2, color: Colors.white),
                          SizedBox(height: Dimentions.height30/2,),
                          Row(
                            children: [
                              Icon(Icons.wallet, color: Colors.blue,),
                              SizedBox(width: Dimentions.with10/2,),
                              SmallText(text: "My Wallet", color: Colors.white,size: Dimentions.font18,)
                            ],
                          ),
                          SizedBox(height: Dimentions.height30/2,),
                          DashedLine(height: 2, color: Colors.white),
                          SizedBox(height: Dimentions.height30/2,),
                          Row(
                            children: [
                              Icon(Icons.language, color: Colors.blue,),
                              SizedBox(width: Dimentions.with10/2,),
                              SmallText(text: "Change Language", color: Colors.white,size: Dimentions.font18,)
                            ],
                          ),
                          SizedBox(height: Dimentions.height30/2,),
                          DashedLine(height: 2, color: Colors.white),
                          SizedBox(height: Dimentions.height30/2,),
                          Row(
                            children: [
                              Icon(Icons.help, color: Colors.blue,),
                              SizedBox(width: Dimentions.with10/2,),
                              SmallText(text: "Help Centre", color: Colors.white,size: Dimentions.font18,)
                            ],
                          ),
                          SizedBox(height: Dimentions.height30/2,),
                          DashedLine(height: 2, color: Colors.white),
                          SizedBox(height: Dimentions.height30/2,),
                          Row(
                            children: [
                              Icon(Icons.star_rate, color: Colors.blue,),
                              SizedBox(width: Dimentions.with10/2,),
                              SmallText(text: "Rate Flutix App ", color: Colors.white,size: Dimentions.font18,)
                            ],
                          ),
                          SizedBox(height: Dimentions.height30/2,),
                          DashedLine(height: 2, color: Colors.white),
                          SizedBox(height: Dimentions.height30/2,),
                        ],
                      ),
                    )
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
