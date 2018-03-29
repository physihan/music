import 'package:flutter/material.dart';
class Test extends StatelessWidget {
  // MusicList()
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.red),
      child: new Stack(
        children: <Widget>[
          new Positioned(
            child: new Container(
              child: new Row(
                children: <Widget>[new Text('data',)],
              ),
            ),
            bottom: 0.00,
            // top: 29.00,
          )
        ],
      ),
    );
  }
}
