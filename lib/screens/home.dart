import 'package:flutter/material.dart';
import 'package:loumo_app/screens/index.dart';

class MyHome extends StatelessWidget {
  String titre = "Loumooh";
  String detail =
      "Notre vision est de révolutionner l’expérience de Shopping à Maroua";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Maroua - 2019",
          style: TextStyle(color: Colors.black, fontSize: 15.0),
          textAlign: TextAlign.center,
        ),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(height: 150.0),
            Container(
              alignment: Alignment.center,
              height: 130.0,
              width: 130.0,
              child: Image.asset("images/cart.png"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              titre,
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 0.7,
                fontFamily: "Schyler",
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                detail,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Index(), 
                ));
              },
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 40.0,
                child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text("Continuer",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
