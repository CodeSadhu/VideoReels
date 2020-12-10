import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
					height: 70,
					padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '@atharva',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Video Title'),
          Row(
            children: [
              Icon(
                Icons.music_note,
                size: 15,
              ),
              Text(
                'Artist Name - Album Name - Song',
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
