import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: SignUp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 60.0,
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
                        hintText: "ex: Foka",
                        labelText: "username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                )),
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
                padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                child: Container(
                  height: 43.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "ex: 699 00 00 00",
                        labelText: "mobile",
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
                          child: Text("inscription",
                              style: TextStyle(color: Colors.white)),
                        )),
                  ),
                )),
           
            
          ],
        ),
      ),
    );
  }
}
