import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List<Widget>.generate(5,
          (_) => Container(width: 40, height: 40, color: Colors.purple[300])),
    );
  }
}
