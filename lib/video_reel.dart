import 'package:flutter/material.dart';
// import 'package:video_reels/widgets/action_toolbar.dart';
import 'package:video_reels/widgets/bottom_section.dart';
import 'package:video_reels/widgets/video_description.dart';

class VideoReel extends StatelessWidget {

	Widget get middleSection => Expanded(
		child: Row(
			mainAxisSize: MainAxisSize.max,
			crossAxisAlignment: CrossAxisAlignment.end,
			children: [VideoDescription()]),
		);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.black,
			body: Column(
			children: [
				middleSection,
				BottomSection(),
			],
			),
		);
	}
}
