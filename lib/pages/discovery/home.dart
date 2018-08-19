import 'package:flutter/material.dart';
import './header.dart';
// import 'package:carousel_pro/carousel_pro.dart';

class Recommend extends StatelessWidget {
  @override
  // Widget header=Builder(builder:(builderCo){

  // })
  Widget build(BuildContext context) {
    return Container(
        // height: 300.0,
        // decoration: BoxDecoration(
        //     border: Border(left: BorderSide(color: Colors.red, width: 3.0))),
        child: SingleChildScrollView(
      primary: true,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container( child: Header()),

          Container(
              color: Colors.white,
              // height: 20.0,
              // width: 100%,
              child: Builder(builder: (BuildContext context) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.red, width: 3.0))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('推荐歌单'),
                    ));
              })),
          GridView.count(
              shrinkWrap: true,
              // maxCrossAxisExtent: 150.0,
              primary: false,
              padding: const EdgeInsets.all(1.0),
              crossAxisSpacing: 1.0,
              crossAxisCount: 3,
              children: [1, 2, 3, 4, 5, 6].map((x) {
                return Image.network(
                    'http://p1.music.126.net/kdupZIANCu-_wXlFdN_bLQ==/109951163448115353.webp?imageView&thumbnail=246x0&quality=75&tostatic=0&type=webp');
              }).toList()),
          Container(
              color: Colors.white,
              // height: 20.0,
              // width: 100%,
              child: Builder(builder: (BuildContext context) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.red, width: 3.0))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('最新音乐'),
                    ));
              })),
          // ListView.builder(
          //   shrinkWrap: true,
          //   itemBuilder: (BuildContext context, int index) => Container(
          //         decoration: BoxDecoration(
          //             border: Border(bottom: BorderSide(width: 1.0))),
          //         child: Row(
          //             // crossAxisAlignment: CrossAxisAlignment.stretch,
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Column(
          //                 children: <Widget>[
          //                   Text('Alive'),
          //                   Text('签证号-myart')
          //                 ],
          //               ),
          //               IconButton(
          //                 icon: Icon(Icons.play_circle_outline),
          //               )
          //             ]),
          //       ),
          // ),
          Container(
            // height: 200.0,
            child: ListView(
                primary: false,
                // physics: ,

                shrinkWrap: true,
                children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((x) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1.0))),
                    child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: <Widget>[
                              Text('Alive'),
                              Text('签证号-myart')
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.play_circle_outline),
                          )
                        ]),
                  );
                }).toList()),
          )
        ],
      ),
    ));
  }
}
