// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:assignment_11/const/model.dart';
import 'package:flutter/material.dart';
//import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final Model item;
  const VideoScreen({super.key, required this.item});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  double volume = 1;
  loadVideoPlayer() {
    controller = VideoPlayerController.asset(widget.item.url);
    controller.addListener(() {
      setState(() {});
    });

    var future = controller.initialize().then((value) {
      setState(() {});
    });
  }

  getVideoPosition() {
    var duration = Duration(
        milliseconds: controller.value.position.inMilliseconds.round());
    return [duration.inMinutes, duration.inSeconds]
        .map((seg) => seg.remainder(60).toString().padLeft(2, '0'))
        .join(':');
  }

  getVolume() {
    controller.setVolume(volume);
    if (volume == 1) {
      volume = 0;
    } else {
      volume = 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final vedio_list = VideoModel.video;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.name),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(getVideoPosition()),
              Container(
                //duration of video
                child: Text(controller.value.duration.toString()),
              ),
            ],
          ),
        ),
        Container(
            child: VideoProgressIndicator(controller,
                allowScrubbing: true,
                colors: const VideoProgressColors(
                  backgroundColor: Colors.redAccent,
                  playedColor: Colors.green,
                  bufferedColor: Colors.purple,
                ))),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }

                    setState(() {});
                  },
                  icon: Icon(controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    controller.seekTo(Duration(seconds: 0));

                    setState(() {});
                  },
                  icon: Icon(Icons.stop)),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {
                    getVolume();
                  },
                  icon: Icon(volume == 1 ? Icons.volume_up : Icons.volume_mute))
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(widget.item.name.toUpperCase()),
        const SizedBox(
          height: 10,
        ),
        Text(widget.item.des)
      ])),
    );
  }
}



//     child: Stack(
      //   children: [
      //     Container(
      //       height: 400,
      //       color: Colors.teal,
      //     ),
      //     Positioned(
      //         top: 0,
      //         left: 0,
      //         right: 0,
      //         child: Stack(
      //           children: [
      //             Container(
      //               color: Colors.black26,
      //               height: 300,
      //             ),
      //             Positioned(
      //                 bottom: 5,
      //                 child: LinearPercentIndicator(
      //                   lineHeight: 20,
      //                   progressColor: Colors.red,
      //                   percent: .2,
      //                 ))
      //           ],
      //         ))
      //   ],
      // )
      