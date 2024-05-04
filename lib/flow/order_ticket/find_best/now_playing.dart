import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/order_ticket/teaser_trailer/teaser_home.dart';
import 'package:movie_flutter/utils/dimensions.dart';
import 'package:movie_flutter/widget/BigText.dart';

import '../../../utils/color.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimentions.pageViewNowPlaying;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Container(

        // color: Colors.redAccent,
        height:Dimentions.pageViewNowPlaying,
        child: PageView.builder(
            controller: pageController,
            itemCount: 6,
            itemBuilder: (context, position){
              return _builPageItem(position);
            }
            )
        ),

      ]
    );
  }

  Widget _builPageItem(int index){
    List<String> imagePaths = [
      "assets/image/banner1.png",
      "assets/image/banner2.png",
      "assets/image/banner3.png",
      "assets/image/banner4.png",
      "assets/image/banner5.png",
      "assets/image/banner6.png",
      // Thêm các đường dẫn hình ảnh khác tương tự cho các trang tiếp theo nếu cần
    ];

    Matrix4 matrix = new Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1 -(_currPageValue - index)*(1- _scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if(index == _currPageValue.floor()+1){
      var currScale =_scaleFactor + (_currPageValue - index +1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if(index == _currPageValue.floor()-1){
      var currScale = 1 -(_currPageValue - index)*(1- _scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }
    String imagePath = imagePaths[index % imagePaths.length];
    return GestureDetector(
      onTap:() {
        Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => TeaserHome(),)
        );
      }, 
      child: Transform(
        transform: matrix,
        child: Stack(
          children: [
            Container(
              height: Dimentions.pageViewNowPlaying,
              margin: EdgeInsets.only(left: Dimentions.with10, right: Dimentions.with10),
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.radius30),
                  color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imagePath,
                      )
                  )
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     height: Dimentions.pageViewNowPlaying,
            //     margin: EdgeInsets.only(left: Dimentions.width30, right: Dimentions.width30, bottom: Dimentions.height30),
            //     decoration:  BoxDecoration(
            //         borderRadius: BorderRadius.circular(Dimentions.radius20),
            //         color: Colors.white,
            //         boxShadow: [
            //           BoxShadow(
            //               blurRadius:   5.0,
            //               color: Color(0xFFe8e8e8),
            //               offset: Offset(0,5)
            //           ),
            //           BoxShadow(
            //               color: Colors.white,
            //               offset: Offset(-5, 0)
            //           ),
            //           BoxShadow(
            //               blurRadius:   1.0,
            //               color: Color(0xFFe8e8e8),
            //               offset: Offset(5,0)
            //           ),
            //         ]
            //     ),
            //     child: Container(
            //       padding: EdgeInsets.only(left: Dimentions.width15, right: Dimentions.width15, top: Dimentions.height15),
            //       child: AppColumn(text: "Chinese side",),
            //     ),
            //   ),
            //
            // )
          ],
        ),
      ),
    );
}
}

