import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("LoumoohApp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              // accountEmail: Text("xxxxxxxxxxxxx@gmail.com"),
              accountName: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Se connecter",
                    style: TextStyle(fontSize: 17.0),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Text("|")),
                  Text("S'inscrire", style: TextStyle(fontSize: 17.0)),
                ],
              ),
              currentAccountPicture: InkWell(
                  child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            InkWell(
                onTap: null,
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.black54,
                  ),
                  title:
                      Text("Accueil", style: TextStyle(color: Colors.black54)),
                )),
            InkWell(
                onTap: null,
                child: ListTile(
                  leading: Icon(
                    Icons.group_work,
                    color: Colors.black54,
                  ),
                  title: Text("Actualité",
                      style: TextStyle(color: Colors.black54)),
                )),
            InkWell(
                onTap: null,
                child: ListTile(
                  leading: Icon(
                    Icons.inbox,
                    color: Colors.black54,
                  ),
                  title: Text("Messenger",
                      style: TextStyle(color: Colors.black54)),
                )),
            InkWell(
                onTap: null,
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.black54,
                  ),
                  title: Text("Mon compte",
                      style: TextStyle(color: Colors.black54)),
                )),
          ],
        ),
      ),
      body: buildBody(),
      
    );
  }
}

Widget buildBody() {
  final Widget images_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/carousel/m1.jpeg"),
        AssetImage("images/carousel/m2.jpg"),
        AssetImage("images/carousel/w1.jpeg"),
        AssetImage("images/carousel/w3.jpeg"),
        AssetImage("images/carousel/m4.jpeg"),
      ],
      indicatorBgPadding: 4.0,
      dotSize: 4.0,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );
  return ListView(
    children:<Widget>[
      images_carousel,
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Categories")
      )
    ]
    
  );
}
