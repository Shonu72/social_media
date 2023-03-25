import 'package:flutter/material.dart';
import 'package:social/models/post_model.dart';
import 'package:video_player/video_player.dart';
class CustomVideoPlayer extends StatefulWidget {

  const CustomVideoPlayer({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController controller;
  @override
  void initState() {
    controller  = VideoPlayerController.asset(widget.post.assetPath);
    controller.initialize().then((_) {
      setState(() {
        // controller.play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          if(controller.value.isPlaying){
            controller.pause();
          }else{
            controller.play();
          }
        });
      },
      child: AspectRatio(
        aspectRatio : controller.value.aspectRatio,
        child: Stack(children: [
          VideoPlayer(controller),
          const Positioned.fill(
              child: DecoratedBox(decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.transparent, Colors.transparent, Colors.black,],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.2, 0.8, 1.0])
              ),
              ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 125,
              width:MediaQuery.of(context).size.width*0.75,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@${widget.post.user.username}',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.post.caption,
                  maxLines: 3,
                  style: Theme.of(context).textTheme
                      .titleSmall!.copyWith(color: Colors.white),
                )
              ],
            ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: controller.value.size.height,
              width: MediaQuery.of(context).size.width*0.2,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: CircleBorder()),
                      child: IconButton(
                          onPressed: (){},
                          color: Colors.white,
                          icon: Icon(Icons.favorite)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        ),
        ),
    );
  }
}