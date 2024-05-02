import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:video_player/video_player.dart';

class VideoTrailer extends StatefulWidget {
  const VideoTrailer({Key? key}) : super(key: key);

  @override
  State<VideoTrailer> createState() => _VideoTrailerState();
}

class _VideoTrailerState extends State<VideoTrailer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    // ignore: deprecated_member_use
    _controller = VideoPlayerController.asset("videotrail1er.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            return AspectRatio(

              aspectRatio: 16 / 9,
                child: VideoPlayer(_controller),
            );
          }else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          else{
            return Center(
              child: BigText(text: "text", color: Colors.white),
            );
          }
        },
    );
  }
}
