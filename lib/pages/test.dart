import 'package:flutter/material.dart';
import './discovery/home.dart';
import 'package:carousel_pro/carousel_pro.dart';
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
        ListView(
            // primary: true,
            // physics: ,

            shrinkWrap: true,
            children: [
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              1,
              5,
              15,
              1,
              1,
              1,
              1,
              1
            ].map((x) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1.0))),
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: <Widget>[Text('Alive'), Text('签证号-myart')],
                      ),
                      IconButton(
                        icon: Icon(Icons.play_circle_outline),
                      )
                    ]),
              );
            }).toList()),
        new Carousel(
          images: [
            new NetworkImage(
                'http://p1.music.126.net/QaCIlALBDrwpoMsoEZk3_w==/109951163467878750.webp?imageView&thumbnail=246x0&quality=75&tostatic=0&type=webp'),
            new NetworkImage(
                'http://p1.music.126.net/QaCIlALBDrwpoMsoEZk3_w==/109951163467878750.webp?imageView&thumbnail=246x0&quality=75&tostatic=0&type=webp'),
            new NetworkImage(
                'http://p1.music.126.net/QaCIlALBDrwpoMsoEZk3_w==/109951163467878750.webp?imageView&thumbnail=246x0&quality=75&tostatic=0&type=webp'),
          ],
        )
      ]),
    );
  }
}
