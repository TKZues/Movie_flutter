import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/dimensions.dart';

class TypeEffect extends StatefulWidget {
  const TypeEffect({Key? key}) : super(key: key);

  @override
  State<TypeEffect> createState() => _TypeEffectState();
}

class _TypeEffectState extends State<TypeEffect> {
  String selectedCategory = 'All';
  List<String> categories = [
    'All',
    'Action',
    'Drama',
    'Comedy',
    'Thriller',
    'Horror',
    'Romance',
    'Sci-Fi'
  ];
  @override
  Widget build(BuildContext context) {


    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          // Tạo nút thể loại từ danh sách
          return Padding(
            padding: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10, top: Dimentions.with10/2, bottom: Dimentions.with10/2),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedCategory = categories[index];
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: selectedCategory == categories[index]?Colors.red: AppColors.button,
                  // Màu nền mặc định
                  foregroundColor: Colors.white, // Màu chữ mặc định
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimentions.radius15)
                  )
              ),
              child: Text(categories[index]),
            ),
          );
        }
    );
  }
}
