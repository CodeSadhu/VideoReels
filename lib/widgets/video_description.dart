import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDescription extends StatefulWidget {
  @override
  _VideoDescriptionState createState() => _VideoDescriptionState();
}

class _VideoDescriptionState extends State<VideoDescription> {

	VideoPlayerController playerController;
	VoidCallback listener;
	Future<void> initializeVideoPlayerFuture;

	@override
  void initState() {
    // TODO: implement initState
    
		playerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
		initializeVideoPlayerFuture = playerController.initialize();
		listener = () {
			setState(() {
			  
			});
		};
		super.initState();
  }

	void createVideo() {
		if (playerController == null) {
			// playerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4")
			// ..addListener(listener)
			// ..setVolume(1.0)
			// ..initialize()
			// ..play();
			playerController
			..addListener(listener)
			..setVolume(1.0)
			..play();
		}
		else {
			if (playerController.value.isPlaying) {
				playerController.pause();
			}
			else {
				playerController.initialize();
				playerController.play();
			}
		}
	}

	@override
  void dispose() {
    // TODO: implement dispose
    playerController.dispose();
		super.dispose();
  }

	// void toggle() {
	// 		createVideo();
	// 		playerController.play();
	// }

	@override
  void deactivate() {
    // TODO: implement deactivate
		playerController.setVolume(0.0);
		playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
				child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
					// color: Colors.blue,
            child: AspectRatio(
							aspectRatio: playerController.value.aspectRatio,
							child: playerController != null
							? VideoPlayer(playerController)
							: Container(),
						)
          ),
					Positioned(
						bottom: 90,
						right: 30,
						child: FloatingActionButton(
							child: Icon(
								playerController.value.isPlaying ? Icons.pause : Icons.play_arrow
							),
							onPressed: () {
								if (playerController.value.isPlaying)
									playerController.pause();
								else {
									createVideo();
									playerController.play();
								}
							},
						),
					),
          Padding(
						padding: EdgeInsets.only(top: 720),
						child: Container(
            height: 70,
            // color: Colors.red,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '@codesadhu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Video Title'),
                Row(
                  children: [
                    Icon(
                      Icons.music_note,
                      size: 15,
                      color: Colors.white,
                    ),
                    Text(
                      'Song Name - Category',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
					),
        ],
      ),
    );
  }
}
// isPlaying == false ?
//  Icon(Icons.play_arrow)
// : Icon(Icons.pause),
// onPressed: () {
// 	toggle(isPlaying);
// },

// playerController.value.isPlaying ?
// Icon(Icons.pause)
// : Icon(Icons.play_arrow),
// onPressed: () {
// 	if (playerController.value.isPlaying)
// 		playerController.pause();
// 	else {
// 		createVideo();
// 		playerController.play();
// 	}
// },