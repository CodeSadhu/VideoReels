import 'package:flutter/material.dart';

class ActionToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // children: _getSocialAction(icon: ),
      ),
    );
  }

  Widget _getSocialAction({String title, IconData icon}) {
    return Container(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
