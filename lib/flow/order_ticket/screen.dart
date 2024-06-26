import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/order_ticket/checkout_movie.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/chair.dart';
import 'package:movie_flutter/widget/small_text.dart';

class ChooseChair extends StatelessWidget {
  const ChooseChair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.back,
        body: Padding(
          padding: EdgeInsets.only(top: Dimentions.height50, left: Dimentions.with20, right: Dimentions.with20, bottom: Dimentions.height10),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back_outlined,size: Dimentions.font26,color: Colors.white,),
                    BigText(text: "Ralp Break the Internet", color: Colors.white,size: Dimentions.font26,),
                    SmallText(text: "FX Sudiman XXI", color: Colors.white70),
                    SizedBox(height: Dimentions.height10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: Dimentions.with20,
                              height: Dimentions.with20, color: AppColors.button_default,
                            ),
                            SizedBox(width: Dimentions.with10,),
                            SmallText(text: "Available", color: Colors.white70),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: Dimentions.with20,
                              height: Dimentions.with20, color: Colors.grey,
                            ),
                            SizedBox(width: Dimentions.with10,),
                            SmallText(text: "Booked", color: Colors.white70),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: Dimentions.with20,
                              height: Dimentions.with20, color: AppColors.button_final,
                            ),
                            SizedBox(width: Dimentions.with10,),
                            SmallText(text: "Your Site", color: Colors.white70),
                          ],
                        ),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimentions.height20,),
              Expanded(child: InteractiveViewer(
                constrained: false,
                minScale: 0.1,
                maxScale: 1.6,
                child: Container(
                  width: 1000,
                  height: 1000,
                  color: AppColors.back,
                  child: Column(
                    children: [
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      Row(
                        children: [
                          Chair(text: "A1"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A2"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A3"),
                          SizedBox(width: Dimentions.width30*1.5,),
                          Chair(text: "A4"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A5"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A6"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A7"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A8"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A9"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A10"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A11"),
                          SizedBox(width: Dimentions.with10,),
                          Chair(text: "A12"),
                        ],
                      ),
                      SizedBox(height: Dimentions.height50,),
                      BigText(text: "Screen", color: Colors.white, size: Dimentions.font26,),
                      SizedBox(height: Dimentions.height10,),
                      Image(image: AssetImage(
                          "assets/image/screen.png"
                      ))
                    ],
                  ),
                ),
              ),),
              SizedBox(height: Dimentions.height20,),
              Container(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SmallText(text: "Total Price (3 ticket)", color: Colors.white70,size: Dimentions.font14,),
                            BigText(text: "RP 150,00", color: Colors.white),
                          ],
                        ),
                        GestureDetector(
                          child: Button(text: "Book Ticket",sizeText: Dimentions.font16, colortext: Colors.white, buttonColor: AppColors.button_final, left: Dimentions.with10,right: Dimentions.with10,),
                          onTap: () {
                            Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => CheckoutMovie(),)
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(width: Dimentions.height10,),
                  ],
                ),
              ),
            ],
          ),
        )

      );
  }
}
