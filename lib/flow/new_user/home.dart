import 'package:flutter/material.dart';
import 'package:movie_flutter/flow/new_user/new_experience.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NewExperience()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            color: Color(0x050711),
          image: DecorationImage(
            image: AssetImage(
              "assets/image/logo.png"
            )
          )
        ),
      ),
    );
  }
}

