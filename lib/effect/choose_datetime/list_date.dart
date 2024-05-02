import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';

class ListDate extends StatefulWidget {
  const ListDate({Key? key}) : super(key: key);

  @override
  State<ListDate> createState() => _ListDateState();
}

class _ListDateState extends State<ListDate> {
  String strClick = '';
  List<String> date = [
    'SAT 21',
    'SUN 22',
    'MON 23',
    'TUE 24',
    'SAT 25',
    'SAT 26',
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
                 padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10,),
                  backgroundColor: strClick == date[index]?Colors.grey: AppColors.button,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimentions.radius15),
                  ),
                 fixedSize: Size(Dimentions.with20*2, Dimentions.height20)
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
