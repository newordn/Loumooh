import 'package:flutter/material.dart';
import 'package:loumo_app/login_signup/signup.dart';

void main() => runApp(
      MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 70.0,
              ),
              child: Container(
                  alignment: Alignment.center,
                  height: 90.0,
                  width: 90.0,
                  child: Image.asset("images/user.png")),
            ),
            SizedBox(height: 10.0),
            Text(
              "Loumooh",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 0.7,
                fontFamily: "Schyler",
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                child: Container(
                  height: 43.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "ex: email@email.com",
                        labelText: "email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  height: 43.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, left: 40.0, right: 30.0),
                child: InkWell(
                  onTap: null,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("Mot de passe oublié",
                        
                        style: TextStyle(color: Colors.blueGrey)),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 30.0, right: 30.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 250.0,
                  height: 40.0,
                  child: InkWell(
                    onTap: null,
                    child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueGrey,
                        child: Center(
                          child: Text("connexion",
                              style: TextStyle(color: Colors.white)),
                        )),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 250.0,
                  height: 40.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueGrey,
                        child: Center(
                          child: Text("inscription",
                              style: TextStyle(color: Colors.white)),
                        )),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 13.0),
                child: Text(
                  "inscription avec",
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: <Widget>[
                  InkWell(
                      onTap: null,
                      child: Image.asset("images/facebook.png",
                          width: 30.0, height: 30.0)),
                          InkWell(
                      onTap: null,
                      child: Image.asset("images/google.png",
                          width: 30.0, height: 30.0)),
                  InkWell(
                      onTap: null,
                      child: Image.asset("images/twitter.png",
                          width: 30.0, height: 30.0))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
