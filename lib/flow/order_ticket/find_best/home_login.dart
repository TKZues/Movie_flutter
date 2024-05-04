import 'package:flutter/material.dart';
import 'package:movie_flutter/effect/list_comingsoon.dart';
import 'package:movie_flutter/effect/type.dart';
import 'package:movie_flutter/flow/my_wallet/home_mywallet.dart';
import 'package:movie_flutter/flow/profile/home_profile.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/icon_category.dart';
import 'package:movie_flutter/widget/icon_select.dart';
import 'package:movie_flutter/widget/input.dart';
import 'package:movie_flutter/widget/promo.dart';
import 'package:movie_flutter/widget/small_text.dart';

import 'now_playing.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  State<HomeLogin> createState() => _HomeState();
}

class _HomeState extends State<HomeLogin> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        width: double.maxFinite,
        height: Dimentions.screenHeight,
        padding: EdgeInsets.only(left: Dimentions.with20,
            right: Dimentions.with20,
            top: Dimentions.height50),
        child: ListView(
          children: [
           Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Find Your Best \nMovie",
                      size: Dimentions.font26,
                      color: Colors.white,
                      textAlign: TextAlign.start,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => HomeProfile(),)
                        );
                      },
                      child: Image(
                          width: Dimentions.logo50,
                          height: Dimentions.logo50,
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/avatar_confirm.png"
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(height: Dimentions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimentions.widthmovie,
          
                      child: Input(textHint: "Search movie"),
                    ),
                    IconCategory(icon: Icons.filter_list_outlined,
                        background: Colors.indigo)
                  ],
                ),
                SizedBox(height: Dimentions.height10,),
                SizedBox(
                    height: Dimentions.height50,
                    child: TypeEffect(),
                ),
                SizedBox(height: Dimentions.height10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Now Playing", color: Colors.white, size: Dimentions.font26,),
                    SmallText(text: "View all", color: AppColors.mainColor)
                  ],
                ),
                SizedBox(height: Dimentions.height10,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: Dimentions.heightNowPlaying, // Chiều cao giới hạn
                  ),
                  child: Expanded(
                      child: SingleChildScrollView(
                        child: NowPlaying(),
                      )
                  ),
                ),
                SizedBox(height: Dimentions.height10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Coming Soon", color: Colors.white, size: Dimentions.font26,),
                    SmallText(text: "View all", color: AppColors.mainColor)
                  ],
                ),
                SizedBox(height: Dimentions.height10,),
                SizedBox(
                  height: 100,
                  child: ListComingSoon(),
                ),
                SizedBox(height: Dimentions.height10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconSelect(icon: Icons.home_filled, text: "Movies"),
                    GestureDetector(
                      child: IconSelect(icon: Icons.account_balance_wallet_outlined, text: "Wallet"),
                      onTap: () {
                        Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => HomeMyWallet(),)
                        );
                      },
                    ),
                    IconSelect(icon: Icons.airplane_ticket_rounded, text: "My Ticket"),
                  ],
                ),
                SizedBox(height: Dimentions.height10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Promo", color: Colors.white, size: Dimentions.font26,),
                    SmallText(text: "View all", color: AppColors.mainColor)
                  ],
                ),
                SizedBox(height: Dimentions.height10,),
                Column(
                  children: [
                    Promo(name: "Student Holiday", descript: "Maximum only for two people", value: "OFF 50%"),
                    Promo(name: "Student Holiday", descript: "Maximum only for two people", value: "OFF 50%"),
                    Promo(name: "Student Holiday", descript: "Maximum only for two people", value: "OFF 50%"),
                  ],
                )
              ]
          ),
          ]
        ),
      ),
    );
  }
}
