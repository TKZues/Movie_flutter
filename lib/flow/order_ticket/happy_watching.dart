import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/my_ticket/myticket.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/button.dart';
import 'package:movie_flutter/widget/small_text.dart';

import '../../utils/dimensions.dart';

class HappyWatching extends StatefulWidget {
  const HappyWatching({Key? key}) : super(key: key);

  @override
  State<HappyWatching> createState() => _HappyWatchingState();
}

class _HappyWatchingState extends State<HappyWatching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        padding: EdgeInsets.only(left: Dimentions.width30*2, right: Dimentions.width30*2, top: Dimentions.height50),
        margin: EdgeInsets.only(top: Dimentions.height70),
        child: Column(
          children: [
            Image(image:
              AssetImage(
                "assets/image/checkoutsuccess.png",
              ),
            ),
            SizedBox(height: Dimentions.height10,),
            BigText(text: "Happy Watching!", color: Colors.white),
            SizedBox(height: Dimentions.height10,),
            SmallText(text: "You have successful bought the ticket", color: Colors.white70),
            SizedBox(height: Dimentions.height70,),
            GestureDetector(
              child: Button(text: "My TicKet", colortext: Colors.white, buttonColor: AppColors.button_final),
              onTap: () {
                Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => MyTicket(),)
                );
              },
            ),
            SizedBox(height: Dimentions.height20,),
            Row(
              children: [
                SmallText(text: "Discover new movie? ", color: Colors.white70),
                SmallText(text: "Back to home", color: Colors.blue)
              ],
            )
          ],
        ),
      ),
    );
  }
}
