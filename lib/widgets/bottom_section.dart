import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  @override
  _BottomSectionState createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _getSocialAction(
          icon: Icons.favorite, /*title: 'Yolo'*/
        ),
        _getSocialAction(
          icon: Icons.mode_comment_rounded, /*title: 'Yolo'*/
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: SliderTheme(
            data: SliderThemeData(
              thumbColor: Colors.yellow[800],
              activeTrackColor: Colors.yellow[700]
            ),
            child: Slider(
              min: 0,
              max: 100,
              divisions: 10,
              value: _currentSliderValue,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }
            ),
          ),
        )
      ],
    );
  }

  Widget _getSocialAction({/*String title, */ IconData icon}) {
    return Container(
      width: 50,
      height: 50,
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.pink[500],
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 1),
          //   child: Text(
          //     title,
          //     style: TextStyle(fontSize: 5),
          //   ),
          // )
        ],
      ),
    );
  }
}
