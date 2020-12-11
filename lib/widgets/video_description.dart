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
			playerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4")
			..initialize()
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
		playerController.dispose();
		super.dispose();
	}

	@override
	void deactivate() {
		playerController.setVolume(0.0);
		playerController.removeListener(listener);
		super.deactivate();
	}

	@override
	Widget build(BuildContext context) {
		return Expanded(
				child: Stack(
				children: [
					Center(
						child: AspectRatio(
							aspectRatio: playerController.value.aspectRatio,
							child: playerController != null
							? VideoPlayer(playerController)
							: Container(),
						)
					),
					Positioned(
						bottom: 60,
						right: 20,
						child: GestureDetector(
							onTap: () {
								setState(() {
									if (playerController.value.isPlaying)
										playerController.pause();
									else {
										createVideo();
										playerController.play();
									}
								});
							},
							child: Container(
								color: Colors.yellow.shade600,
								padding: EdgeInsets.all(8),
								child: Icon(
                  playerController.value.isPlaying
                  ? Icons.pause
                  : Icons.play_arrow,
                  size: 20,
                  // color: Colors.white,
                ),
							),
						),
					),
					Padding(
						padding: EdgeInsets.only(top: 720),
						child: Container(
						height: 70,
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