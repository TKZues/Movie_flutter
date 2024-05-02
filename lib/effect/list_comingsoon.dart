import 'package:flutter/cupertino.dart';
import 'package:movie_flutter/utils/dimensions.dart';

class ListComingSoon extends StatefulWidget {
  const ListComingSoon({Key? key}) : super(key: key);

  @override
  State<ListComingSoon> createState() => _ListComingSoonState();
}

class _ListComingSoonState extends State<ListComingSoon> {
  List<String> imageUrls = [
    'assets/image/comingsoon1.png',
    'assets/image/comingsoon2.png',
    'assets/image/comingsoon3.png',
    'assets/image/comingsoon1.png',
    'assets/image/comingsoon2.png',
    'assets/image/comingsoon3.png',
    'assets/image/comingsoon1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.all(Dimentions.height10),
              child: Image.asset(
                imageUrls[index],
                width: Dimentions.widthComingSoon,
                height: Dimentions.widthComingSoon,
              ),
            );
      },

    );
  }
}
