import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/small_text.dart';

class ListCast extends StatefulWidget {
  ListCast({Key? key}) : super(key: key);

  @override
  State<ListCast> createState() => _ListCastState();
}

class _ListCastState extends State<ListCast> {
  List<String> imageUrls = [
    'assets/image/cast1.png',
    'assets/image/cast2.png',
    'assets/image/cast3.png',
    'assets/image/cast4.png',
    'assets/image/cast5.png',
    'assets/image/cast6.png',

  ];
  List<String> name = [
    'Rich Moore',
    'Gal Gadot',
    'Sarah Silverman',
    'Phil Johnston',
    'John C. Reilly',
    'Jack McBrayer'

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.zero,
              margin: EdgeInsets.only(right: Dimentions.with10),
              child: Column(
                children: [
                    ClipRRect(
                    borderRadius: BorderRadius.circular(Dimentions.radius15),
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      width: Dimentions.widthCast,
                      height: Dimentions.widthCast,
                    ),
                  ),
                  SmallText(text: name[index], color: Colors.white70, size: Dimentions.font12,)
                ],
              ),
          );
        },
    );
  }
}
