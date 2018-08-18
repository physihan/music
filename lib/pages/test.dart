import 'package:flutter/material.dart';
import './discovery/recommend.dart';

// class Test extends StatefulWidget {
//    TabController _tabController=new TabController(vsync: this, length: 3);
//   // MusicList()
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       decoration: new BoxDecoration(color: Colors.red),
//       child: new Scaffold(
//         appBar: AppBar(
//           title: TabBar(
//             tabs: [
//               new Tab(
//                 text: '推荐',
//               ),
//               new Tab(text: '朋友', icon: new Icon(Icons.directions_transit)),
//               new Tab(text: '电台', icon: new Icon(Icons.directions_bike)),
//             ],
//             controller: _tabController,
//           ),
//         ),
//         body: new TabBarView(
//           controller:_tabController,
//           children: <Widget>[
//             Text('1'),
//             Text('1'),
//             Text('1'),
//           ],
//         ),
//       ),
//     );
//   }
// }
class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);
  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(
      child: Text('推荐'),
    ),
    new Tab(text: '朋友'),
    new Tab(text: '电台'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: new TabBarView(controller: _tabController, children: [
        Recommend(),

       Column(children: <Widget>[ GridView.extent(
          maxCrossAxisExtent: 150.0,
          primary: false,
          padding: const EdgeInsets.all(1.0),
          crossAxisSpacing: 1.0,
          // crossAxisCount: 2,
          children: <Widget>[
            const Text('He\'d have you all unravel at the'),
            const Text('Heed not the rabble'),
            const Text('Sound of screams but the'),
            const Text('Who scream'),
            const Text('Revolution is coming...'),
            const Text('Revolution, they...'),
          ],
        )],),
        Text('1'),
      ]),
    );
  }
}
