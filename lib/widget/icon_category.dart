import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:movie_flutter/utils/dimensions.dart';

class IconCategory extends StatelessWidget {
  final IconData icon;
  double size;
  final Color background;
  IconCategory({Key? key, required this.icon, required this.background, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.height70,
      width:  Dimentions.height70,
      padding: EdgeInsets.all(Dimentions.with10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimentions.radius15),
        color: background
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: size==0?Dimentions.font20:size,
      ),
    );
  }
}
