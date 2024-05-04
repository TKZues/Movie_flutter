import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';

class ListCentral extends StatefulWidget {
  const ListCentral({Key? key}) : super(key: key);

  @override
  State<ListCentral> createState() => _ListDateState();
}

class _ListDateState extends State<ListCentral> {
  String strClick = '';
  List<String> date = [
    '12:20',
    '14:30',
    '15:30',
    '17:00',
    '18:45',
    '20:00',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(Dimentions.with10),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  strClick = date[index];
                });
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20,),
                  backgroundColor: strClick == date[index]?AppColors.button_final: AppColors.button_default,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimentions.radius15),
                  ),
                  // fixedSize: Size(Dimentions.width30*2, Dimentions.height20)
              ),
              child: BigText(text: date[index], color: Colors.white70, textOverflow: TextOverflow.visible,size: Dimentions.font16,)

          ),
        );
      },
      itemCount: date.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
