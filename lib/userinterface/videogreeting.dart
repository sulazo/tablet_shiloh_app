
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';




class VideoGreeting extends StatefulWidget {

  @override
  _VideoGreetingState createState() => _VideoGreetingState();
}

class _VideoGreetingState extends State<VideoGreeting> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 15),
            () => Navigator.pop (context));
    _controller = VideoPlayerController.network(
        'https://youtu.be/ej4t50c1ItA')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Color(0xff8b0000),
      title: 'Welcome Message',
      home: Scaffold(
        body: Center(
          child: _controller.value.initialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff8b0000),
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
