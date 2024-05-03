import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:movie_flutter/widget/dotted_line.dart';

import '../../utils/dimensions.dart';
import '../../widget/small_text.dart';

class TicketDetail extends StatefulWidget {
  const TicketDetail({Key? key}) : super(key: key);

  @override
  State<TicketDetail> createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height50),
        child: Stack(
          children: [
            Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(text: "Ticket Details", color: Colors.white,size: Dimentions.font26,),
                    SizedBox(height: Dimentions.height30,),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Dimentions.radius15),
                          child: Image.asset(
                            "assets/image/poster1.png",
                            width: Dimentions.logo50*2,
                          ),
                        ),
                        SizedBox(width: Dimentions.with10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: "Ralph Breaks the \nInternet", color: Colors.white,textAlign: TextAlign.left,size: Dimentions.font16,),
                            SizedBox(height: Dimentions.height10,),
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
                            SizedBox(height: Dimentions.height10,),
                            SmallText(text: "16:40, Sun May 22", color: Colors.white70, size: Dimentions.font12,),
                            SizedBox(height: Dimentions.height10,),
                            SmallText(text: "FX Sudiman XXI", color: Colors.white70, size: Dimentions.font12,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(text: "ID Order", color: Colors.white70),
                        SmallText(text: "22081996", color: Colors.white)
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(text: "Cinema", color: Colors.white70),
                        SmallText(text: "FX Sudiman XXI", color: Colors.white)
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(text: "Date & Time", color: Colors.white70),
                        SmallText(text: "Sun May 22, 16:40", color: Colors.white)
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(text: "Seat Number", color: Colors.white70),
                        SmallText(text: "D7,D8,D9", color: Colors.white)
                      ],
                    ),
                    SizedBox(height: Dimentions.height20,),
                    DashedLine(
                      height: 1.0, // Chiều cao của đường nét đứt
                      color: Colors.white, // Màu sắc của đường nét đứt
                    ),
                    SizedBox(height: Dimentions.height20,),
                    Container(
                      padding: EdgeInsets.only(left: Dimentions.width30*3, right: Dimentions.width30*3),
                      child: Image.asset(
                        "assets/image/qr.png"
                      ),
                    ),
                    SizedBox(height: Dimentions.height10,),
                    SmallText(text: "ID Order", color: Colors.white70, ),
                    BigText(text: "2102392", color: Colors.white)
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
