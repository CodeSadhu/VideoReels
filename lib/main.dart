import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_reels/video_reel.dart';

void main() {
	runApp(Home());
}

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Video Reels',
			theme: ThemeData(
				textTheme: Theme.of(context)
				.textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white)
			),
			debugShowCheckedModeBanner: false,
			home: VideoReel(),
		);
	}
}