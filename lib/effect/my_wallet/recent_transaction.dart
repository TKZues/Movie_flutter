import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/my_wallet/top_up.dart';

import '../../utils/dimensions.dart';
import '../../widget/BigText.dart';
import '../../widget/small_text.dart';

class RecentTransaction extends StatelessWidget {
  final String name;
  final String price;
  final String time;
  RecentTransaction({Key? key, required this.name, required this.price, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> imagePaths = [
      "assets/image/poster1.png",
      "assets/image/poster2.png",
      "assets/image/poster3.png",
      "assets/image/poster4.png",
      "assets/image/poster5.png",
      "assets/image/poster6.png",
      "assets/image/poster7.png",
    ];

    return  Column(
      children: List.generate(
        imagePaths.length,
            (index) => Padding(
          padding: EdgeInsets.only(right: Dimentions.with10), // Thêm padding giữa các hình ảnh
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => TopUp(),)
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimentions.radius15),
              child: Row(
                children: [
                  Image.asset(
                    imagePaths[index],
                    width: Dimentions.logo120 / 2,
                  ),
                  SizedBox(width: Dimentions.with10,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                        SizedBox(height: Dimentions.height10,),
                        SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                        SizedBox(height: Dimentions.height10,),
                        SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
        ),
      ),
    );

  }
}
