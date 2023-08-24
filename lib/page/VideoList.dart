import 'package:assignment_11/const/model.dart';
import 'package:assignment_11/screen/widgetList.dart';
import 'package:flutter/material.dart';

class VideoListScreen extends StatefulWidget {
  const VideoListScreen({super.key});

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  @override
  Widget build(BuildContext context) {
    final vedio_list = VideoModel.video;
    final h_size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Video Player"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              color: Colors.yellow,
              height: h_size / 3,
              child: Image.asset("asset/song.jpg", fit: BoxFit.cover,)),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: vedio_list.length,
                  itemBuilder: (context, index) {
                    return ListTILE(model: VideoModel.video[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
