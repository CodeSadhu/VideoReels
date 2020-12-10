import 'package:flutter/material.dart';

class ActionToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(
            5,
            (_) => Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue[300],
                  margin: EdgeInsets.only(top: 20),
                )),
      ),
    );
  }
}
