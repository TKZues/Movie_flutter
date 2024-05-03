import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/small_text.dart';

class CartWallet extends StatelessWidget {
  final String name;
  final String IDR;
  final String seri;
  const CartWallet({Key? key, required this.name, required this.IDR, required this.seri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.with20, bottom: Dimentions.with20),
      decoration: BoxDecoration(
        color: AppColors.cart,
        borderRadius: BorderRadius.circular(Dimentions.radius20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(text: "Card Name", color: Colors.white70,size: Dimentions.font14,),
          SizedBox(height: Dimentions.height10/2,),
          BigText(text: name, color: Colors.white, size: Dimentions.font16,),
          SizedBox(height: Dimentions.height20,),
          SmallText(text: seri, color: Colors.white70,size: Dimentions.font14,),
          SizedBox(height: Dimentions.height20,),
          Row(
            children: [
              BigText(text: "IDR ", color: Colors.white, size: Dimentions.font14*2,),
              BigText(text: IDR, color: Colors.white, size: Dimentions.font14*2,)
            ],
          )
        ],
      ),
    );
  }
}
