import 'package:flutter/material.dart';
import './pages/music_list.dart';
import './pages/test.dart';
// import 'package:audioplayer/audioplayer.dart';
import './pages/play.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.red),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              // title: new Text('网易云音乐'),
              // new Text('网易云音乐'),
              title: new TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.music_note)),
                  new Tab(icon: new Icon(Icons.directions_transit)),
                  new Tab(icon: new Icon(Icons.directions_bike)),
                ],
              ),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.search),
                  // color: Colors.red,
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text('data'),
                        ));
                  },
                )
              ],
              // bottom: new TabBar(
              //   tabs: [
              //     new Tab(icon: new Icon(Icons.music_note)),
              //     new Tab(icon: new Icon(Icons.directions_transit)),
              //     new Tab(icon: new Icon(Icons.directions_bike)),
              //   ],
              // ),
            ),
            bottomNavigationBar: new Builder(
              builder: (BuildContext context) {
                return new Container(
                  height: 80.00,
                  child: new Row(
                    children: <Widget>[
                      new Image.network('http://via.placeholder.com/60x60'),
                      new Expanded(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text('  国王与乞丐'),
                            new Text('  横划可以切换上下首哦')
                          ],
                        ),
                      ),
                      new IconButton(
                        icon: new Icon(Icons.play_circle_outline),
                        iconSize: 40.00,
                      ),
                      new IconButton(
                        icon: new Icon(Icons.playlist_play),
                        iconSize: 50.00,
                        onPressed: () {
                          // Scaffold.of(context).showSnackBar(new SnackBar(
                          //       content: new Text('data'),
                          //     ));
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext contex) {
                              return new Container(
                                  height: 300.00,
                                  decoration: new BoxDecoration(
                                      // color: Colors.lightGreenAccent,
                                      ),
                                  child: new Column(
                                    children: <Widget>[
                                      new Container(
                                        decoration: new BoxDecoration(
                                            border: new Border(
                                                bottom: new BorderSide(
                                                    width: 1.00,
                                                    color: Colors.grey))),
                                        height: 40.00,
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            new Row(
                                              children: <Widget>[
                                                new Icon(Icons.update),
                                                new Text('  随机播放(50)'),
                                              ],
                                            ),
                                            new Row(
                                              children: <Widget>[
                                                new Icon(Icons.collections),
                                                new Text(' 收藏全部'),
                                                new IconButton(
                                                  icon: new Icon(Icons.delete),
                                                  onPressed: () {
                                                    print('');
                                                  },
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      new Expanded(
                                        child: ListView.builder(
                                          itemBuilder:
                                              (BuildContext context, int x) {
                                            if (x.isOdd) return new Divider();
                                            return new ListTile(
                                              title: new Text('data$x'),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            body: new TabBarView(
              children: <Widget>[
                new Music(),
                new Test(),
                new AudioApp(),
              ],
            ),
            drawer: new Drawer(
                child: new Padding(
              padding: const EdgeInsets.all(30.00),
              child: new Column(
                children: <Widget>[new Text('data111'), new Text('data1112')],
              ),
            )),
          ),
        ),
      ],
    );
  }
}
// [1,2,3].map(()=>new Text('data')).toList()

// new Positioned(
//           child: new Container(
//             height: 10.00,
//             width: MediaQuery.of(context).size.width,
//             // constraints: new BoxConstraints(),
//             decoration: new BoxDecoration(
//               color: Colors.grey[350],
//               // border: new Border.all(width: 1.0, color: Colors.red),
//             ),
//             child: new Material(
//               child: new Row(
//                 children: <Widget>[
//                   new Image.network('http://via.placeholder.com/60x60'),

//                   new Expanded(
//                     child: new Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         new Text('  国王与乞丐'),
//                         new Text('  横划可以切换上下首哦')
//                       ],
//                     ),
//                   ),
//                   new IconButton(
//                     icon: new Icon(Icons.play_circle_outline),
//                     iconSize: 40.00,
//                   ),
//                   new IconButton(
//                     icon: new Icon(Icons.playlist_play),
//                     iconSize: 50.00,
//                     onPressed: () {
//                       Scaffold.of(context).showSnackBar(new SnackBar(
//                             content: new Text('data'),
//                           ));
//                     },
//                   ),
//                   // // new Text('data111'),
//                   // new IconButton(
//                   //   icon: new Icon(Icons.search),
//                   //   onPressed: null,
//                   // ),
//                   // new Icon(Icons.settings),
//                   // new GestureDetector(
//                   //   child: new Image(
//                   //     image: new NetworkImage('http://via.placeholder.com/60x60'),
//                   //   ),
//                   // )
//                 ],
//               ),
//             ),
//           ),
//           bottom: 00.00,
//         )

//  new Scaffold(
//       appBar: new AppBar(
//         title: new Text('widget.title'),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.playlist_play),
//             tooltip: 'Air it',
//             onPressed: null,
//           ),
//           new IconButton(
//             icon: new Icon(Icons.playlist_add),
//             tooltip: 'Restitch it',
//             onPressed: null,
//           ),
//           new IconButton(
//             icon: new Icon(Icons.playlist_add_check),
//             tooltip: 'Repair it',
//             onPressed: null,
//           ),
//         ],
//         bottom: new TabBar(
//           tabs: [
//             new Tab(icon: new Icon(Icons.directions_car)),
//             new Tab(icon: new Icon(Icons.directions_transit)),
//             new Tab(icon: new Icon(Icons.directions_bike)),
//           ],
//         ),
//       ),
//       drawer: new Drawer(
//         child: new Text('data'),
//       ),
//     );
