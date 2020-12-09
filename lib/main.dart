import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Video Reels',
			debugShowCheckedModeBanner: false,
			home: VideoReel(),
		);
	}
}

class VideoReel extends StatefulWidget {
	@override
	_VideoReelState createState() => _VideoReelState();
}

class _VideoReelState extends State<VideoReel> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Video Reels'),
			),
			body: Center(
				child: RaisedButton(
					child: Text('Click Me'),
					onPressed: null
				),
			),
		);
	}
}