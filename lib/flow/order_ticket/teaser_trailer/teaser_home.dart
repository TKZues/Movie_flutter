import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/effect/list_cast.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/small_text.dart';

class TeaserHome extends StatefulWidget {
  const TeaserHome({Key? key}) : super(key: key);

  @override
  State<TeaserHome> createState() => _TeaserHomeState();
}

class _TeaserHomeState extends State<TeaserHome> {
  bool _isAboutMeExpanded = false;
  bool _isReviewExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColors.back
          ),
          Stack(
            children: [
              Image.asset(
                "assets/image/comingsoon3.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 300,
              ),
              Positioned.fill(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
      
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height50*5),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                         "assets/image/comingsoon3.png",
                      width: Dimentions.logo100*1.5,

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            Icon(Icons.star, color: Colors.yellow,size: Dimentions.font16,),
                            SmallText(text: "(4.7)", color: Colors.white70,size: Dimentions.font12,)
                          ],
                        ),
                        SmallText(text: "Rich Moore, Phil Johnston", color: Colors.white70, size: Dimentions.font12,)
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          child: BigText(
                              text: "About me", color: Colors.white
                          ),
                        )
                    ),
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _isAboutMeExpanded = !_isAboutMeExpanded;
                            });
                          },
                          child: BigText(
                              text: "Review", color: Colors.white
                          ),
                        )
                    ),

                  ],
                ),
                _isAboutMeExpanded?Container(
                  child: SmallText(text: "Wreck-It Ralph 2: Phá đảo thế giới "
                      "ảo là phim điện ảnh hoạt hình hài hước 3D của Mỹ năm "
                      "2018 do Walt Disney Animation Studios sản xuất và Walt"
                      " Disney Studios Motion Pictures chịu trách nhiệm phân phối."
                      " Tác phẩm là phim điện ảnh hoạt hình thứ 57 do hãng sản xuất,"
                      " đồng thời cũng là phần tiếp theo của Ráp-phờ đập phá. ", color: Colors.white),
                ):SizedBox(),
                SizedBox(height: Dimentions.height10,),
                BigText(text: "Cast & Crew", color: Colors.white, textAlign: TextAlign.left,),
                SizedBox(
                  height: Dimentions.height50*3,
                  child: ListCast(),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}
