import 'package:flutter/material.dart';
import 'package:video_reels/widgets/custom_slider.dart';

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
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.yellow[700],
              inactiveTrackColor: Colors.yellow[100],
              trackHeight: 4.0,
              thumbShape: CustomSliderThumbCircle(
                thumbRadius: 12
              ),
              thumbColor: Colors.amber[700],
              overlayColor: Colors.amber.withAlpha(32),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
              tickMarkShape: RoundSliderTickMarkShape(),
              activeTickMarkColor: Colors.white,
              inactiveTickMarkColor: Colors.yellow[900],
              valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.amberAccent,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
              ),
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
