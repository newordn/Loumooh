import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:loumo_app/screens/composants/horizontal.dart';
import 'package:loumo_app/screens/composants/details.dart' as prefix0;

class BuildBody extends StatefulWidget {
  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  final Widget images_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/carousel/m/m1.jpg"),
        AssetImage("images/carousel/m/m2.png"),
        AssetImage("images/carousel/m/m3.jpg"),
        // AssetImage("images/carousel/m1.jpeg"),
        // AssetImage("images/carousel/m2.jpg"),
        // AssetImage("images/carousel/w1.jpeg"),
        // AssetImage("images/carousel/w3.jpeg"),
        // AssetImage("images/carousel/m4.jpeg"),
      ],
      indicatorBgPadding: 4.0,
      dotSize: 4.0,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
    images_carousel,
    Padding(padding: EdgeInsets.all(8.0), child: Text("Categories")),
    Horizontal(),
    Padding(
      padding: EdgeInsets.only(left:8.0, right: 8.0),
      child: Text("Recommandation"),
    ),
    prefix0.Element()

  ]);
  }
}