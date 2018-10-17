import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:klunok/Pages/registration_info_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            body: new Column(children: <Widget>[
      new Container(
        margin: EdgeInsets.only(left: 10.0),
        child: Image.asset('images/login_page_logo.png'),
      ),
      new Container(
          child: new Column(children: <Widget>[
        new Text(
          'Hi, I\'m your backpack!',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        new Container(
          height: 10,
        ),
        new Text('Let\'s get acquainted?',
            style: new TextStyle(fontSize: 15), textAlign: TextAlign.center)
      ])),
      new Container(height: 60),

      // Social networks login buttons block

      new Container(
          child: new Column(children: <Widget>[
        // Facebook button
        new Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: new CupertinoButton(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  //new Image.asset('images/instagram.png'),
                  new Expanded(
                      child: new Text("FACEBOOK",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold
                          )))
                ],
              ),
              color: Colors.blueAccent,
              pressedOpacity: 0.5,
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationInfoPage())),
            )),

        //spacer
        new Container(height: 20.0),

        // Google button
        new Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: new CupertinoButton(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  //new Image.asset('images/instagram.png'),
                  new Expanded(
                      child: new Text("GOOGLE",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold
                          )))
                ],
              ),
              color: Colors.white70,
              pressedOpacity: 0.8,
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationInfoPage())),
            ))
      ]))
    ])));
  }
}
