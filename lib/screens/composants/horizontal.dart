import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categorie(
            titre: "images/cats/accessories.png",
            sousTitre: "Accessoires",
          ),
          Categorie(
            titre: "images/cats/tel.png",
            sousTitre: "Téléphones",
          ),
          Categorie(
            titre: "images/cats/chaussure.png",
            sousTitre: "Chaussure",
          ),
          Categorie(
            titre: "images/cats/boisson.png",
            sousTitre: "Boisson",
          ),
          Categorie(
            titre: "images/cats/dd.png",
            sousTitre: "Disque dur",
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
        padding: EdgeInsets.all(2.0),
        child: InkWell(
            onTap: null,
            child: Container(
              width: 100.0,
              child: ListTile(
                title: Image.asset(
                  titre,
                  width: 100.0,
                  height: 80.0,
                ),
                subtitle: Container(
                  child: Text(sousTitre, style: TextStyle(fontSize: 13.0, color: Colors.black), textAlign: TextAlign.center,),
                ),
              ),
            )));
  }
}
