import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  // MusicList()
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.music_note),
              title: new Text('本地音乐'),
            ),
            new ListTile(
              leading: new Icon(Icons.music_note),
              title: new Text('最近播放'),
            ),
            new ListTile(
              leading: new Icon(Icons.music_note),
              title: new Text('下载管理'),
            ),
            new ListTile(
              leading: new Icon(Icons.music_note),
              title: new Text('我的电台'),
            ),
            new ListItem()
          ],
        ),
        new Expanded(
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new ListSetting(),
              new Expanded(
                child: new MusicList(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context));
    return new Container(
        // height: MediaQuery.of(context).size.height - 500.00,
        decoration: new BoxDecoration(
            border: new Border.all(width: 1.00, color: Colors.red)),
        // constraints: new BoxConstraints(maxHeight:MediaQuery.of(context).size.height - 400.00, ),
        child: new ListView(
          children: [1, 2, 3, 3, 4, 5, 6, 7].map((x) {
            return new ListTile(
              leading: new Image(
                image: new NetworkImage('http://via.placeholder.com/60x60'),
                width: 60.00,
                height: 60.00,
              ),
              subtitle: Container(
                child: Text('data'),
              ),
              title: Text('data'),
              trailing: IconButton(icon: Icon(Icons.more)),
              onTap: () {
                print('object');
              },
            );
          }).toList(),
          // children: <Widget>[

          //   new ListTile(
          //     leading: new Image(
          //       image: new NetworkImage('http://via.placeholder.com/60x60'),
          //       width: 60.00,
          //       height: 60.00,
          //     ),
          //     title: new Text('歌单1'),
          //   ),
          //   new ListTile(
          //     leading: new Image(
          //       image: new NetworkImage('http://via.placeholder.com/60x60'),
          //       width: 60.00,
          //       height: 60.00,
          //     ),
          //     title: new Text('歌单1'),
          //   ),
          // ],
        ));
  }
}

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10.00),
      child: new Row(
        children: <Widget>[new Icon(Icons.movie_filter), new Text('data')],
      ),
    );
  }
}

class ListSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.fromLTRB(20.00, 5.00, 20.00, 5.00),
      decoration: new BoxDecoration(
        color: Colors.grey,
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Icon(Icons.keyboard_arrow_down),
          new Text('创建的歌单'),
          new Container(
            // padding: const EdgeInsetsDirectional.only(start:200.0),

            // decoration: new BoxDecoration(
            //   color: Colors.pink[500],
            //   border: new Border(
            //       top: new BorderSide(
            //           color: new Color.fromARGB(255, 30, 255, 30), width: 4.0)),
            // ),
            alignment: Alignment.center,
            child: new Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
