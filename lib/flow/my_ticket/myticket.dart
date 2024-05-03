import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';

import '../../utils/dimensions.dart';
import '../../widget/small_text.dart';

class MyTicket extends StatefulWidget {
  const MyTicket({Key? key}) : super(key: key);

  @override
  State<MyTicket> createState() => _MyTicketState();
}

class _MyTicketState extends State<MyTicket> {
  bool _isAllExpanded = true;
  bool _isNewsExpanded = false;
  bool _isExpiredExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height50),
        child: Column(
          children: [
            BigText(text: "My Ticket", color: Colors.white, size: Dimentions.font26,),
            SizedBox(height: Dimentions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isAllExpanded = true;
                            _isNewsExpanded = false;
                            _isExpiredExpanded = false;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: _isAllExpanded?MaterialStateProperty.all(AppColors.button_final):MaterialStateProperty.all(AppColors.button),
                            foregroundColor: MaterialStateProperty.all(Colors.white70),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>  (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height10, bottom: Dimentions.height10),)
                        ),
                        child:BigText(text: "All", color: Colors.white70,size: Dimentions.font16,)

                    )
                ),
                SizedBox(width: Dimentions.with10,),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isAllExpanded = false;
                            _isNewsExpanded = true;
                            _isExpiredExpanded = false;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: _isNewsExpanded?MaterialStateProperty.all(AppColors.button_final):MaterialStateProperty.all(AppColors.button),
                            foregroundColor: MaterialStateProperty.all(Colors.white70),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>  (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height10, bottom: Dimentions.height10),)
                        ),
                        child:BigText(text: "News", color: Colors.white70,size: Dimentions.font16,)

                    )
                ),
                SizedBox(width: Dimentions.with10,),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isAllExpanded = false;
                            _isNewsExpanded = false;
                            _isExpiredExpanded = true;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: _isExpiredExpanded?MaterialStateProperty.all(AppColors.button_final):MaterialStateProperty.all(AppColors.button),
                            foregroundColor: MaterialStateProperty.all(Colors.white70),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>  (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.height10, bottom: Dimentions.height10),)
                        ),
                        child:BigText(text: "Expired", color: Colors.white70,size: Dimentions.font16,)

                    )
                ),
              ],
            ),
            SizedBox(height: Dimentions.height20,),
            Container(
              width: double.maxFinite,
              height: Dimentions.height10/10,
              color: Colors.white,
            ),
            _isAllExpanded
                ? Container(
              height: Dimentions.heightMyTicket, // Chiều cao của văn bản có thể cuộn
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
                : SizedBox(),
            _isNewsExpanded
                ? Container(
              height: Dimentions.heightMyTicket, // Chiều cao của văn bản có thể cuộn
              child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
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
                : SizedBox(),
            _isExpiredExpanded
                ? Container(
              height: Dimentions.heightMyTicket, // Chiều cao của văn bản có thể cuộn
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
                : SizedBox(),
          ],
        ),
      ),
    );

  }
}
