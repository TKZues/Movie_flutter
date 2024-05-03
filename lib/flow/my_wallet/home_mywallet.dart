import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/cart.dart';

import '../../utils/dimensions.dart';
import '../../widget/small_text.dart';

class HomeMyWallet extends StatefulWidget {
  const HomeMyWallet({Key? key}) : super(key: key);

  @override
  State<HomeMyWallet> createState() => _HomeMyWalletState();
}

class _HomeMyWalletState extends State<HomeMyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height70),
        child: Column(
          children: [
            BigText(text: "My Wallet", color: Colors.white, size: Dimentions.font26,),
            SizedBox(height: Dimentions.height20,),
            CartWallet(name: "Arya Wijaya", IDR: "50.000", seri: "8736.2133.2456.2313"),
            SizedBox(height: Dimentions.height20,),
            Container(
              width: double.maxFinite,
              child: BigText(text: "Recent Transactions", color: Colors.white, textAlign: TextAlign.start, ),
            ),
            SizedBox(height: Dimentions.height20,),
            Container(
              height: Dimentions.heightMyWallet, // Chiều cao của văn bản có thể cuộn
              child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster1.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster2.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster3.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster4.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster5.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster6.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster7.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: Dimentions.height10,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimentions.radius15),
                              child: Image.asset(
                                "assets/image/poster8.png",
                                width: Dimentions.logo120/2,
                              ),
                            ),
                            SizedBox(width: Dimentions.with10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                                SizedBox(height: Dimentions.height10,),
                                SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
