import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categorie(
            titre: "images/cats/dress.png",
            sousTitre: "Test",
          ),
          Categorie(
            titre: "images/cats/accessories.png",
            sousTitre: "Test",
          ),
          Categorie(
            titre: "images/cats/formal.png",
            sousTitre: "Test",
          ),
          Categorie(
            titre: "images/cats/dress.png",
            sousTitre: "Test",
          ),
          Categorie(
            titre: "images/cats/accessories.png",
            sousTitre: "Test",
          ),
          Categorie(
            titre: "images/cats/formal.png",
            sousTitre: "Test",
          ),
        ],
      ),
    );
  }
}

class Categorie extends StatelessWidget {
  String titre, sousTitre;

  Categorie({this.titre, this.sousTitre});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5.0),
        child: InkWell(
            onTap: null,
            child: Container(
              width: 100.0,
              child: ListTile(
                title: Image.asset(
                  titre,
                  width: 90.0,
                  height: 80.0,
                ),
                subtitle: Container(
                  alignment: Alignment.center,
                  child: Text(sousTitre),
                ),
              ),
            )));
  }
}
