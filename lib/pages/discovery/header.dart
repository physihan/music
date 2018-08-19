import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 150.0,
          child: new Carousel(
            images: [
              new NetworkImage('https://via.placeholder.com/350x150'),
              new NetworkImage('https://via.placeholder.com/350x150'),
              new NetworkImage('https://via.placeholder.com/350x150'),
            ],
          ),
        ),
        // Text('da')
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [{'title':'私人FM',}, {'title':'每日推荐',},{'title':'歌单',},{'title':'排行榜',}].map((x) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
                  return new Scaffold(appBar:new AppBar());
                }));
              },
              child: Padding(padding:EdgeInsets.symmetric(vertical:10.0),child:Column(children: [
                new Container(
                  
                  width: 30.0,
                  height: 30.0,
                  decoration: new BoxDecoration(
                  color: Colors.red,

                    shape: BoxShape.circle,
                  ),
                  child: new Icon(Icons.missed_video_call,color: Color(0xffffffff),),
                ),
                Text(x['title'])
              ]),)
            );
          }).toList(),
        )
      ],
    );
  }
}
