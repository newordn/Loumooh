import 'package:flutter/material.dart';

import 'package:loumo_app/login_signup/login.dart';
import 'package:loumo_app/login_signup/signup.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:loumo_app/screens/build_body.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final _pageOptions = [
    BuildBody(),
    Text("En cours de creation .."),
    Text("En cours de creation ..")
  ];
  int _selectPage = 0;
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
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Se connecter",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Text("|")),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                      child:
                          Text("S'inscrire", style: TextStyle(fontSize: 17.0))),
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
                onTap: (){
                  Navigator.pop(context);
                },
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
      body: _pageOptions[_selectPage],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: <Widget>[
          Icon(Icons.home, size: 20.0,),
          Icon(Icons.search, size: 20.0,),
          Icon(Icons.card_giftcard, size: 20.0,)
        ],
        onTap: (index){
          setState(() {
            _selectPage = index;
          });
        },
      ),
      
    );
  }
}


