import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:klunok/Pages/bluetooth_connect.dart';
import 'package:klunok/UI/stamina_category_widget.dart';

class RegistrationStaminaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistrationStaminaState();
  }
}

class RegistrationStaminaState extends State<RegistrationStaminaPage> {
  @override
  Widget build(BuildContext context) {
    //  AppBar Widget
    Widget _appBar = new AppBar(
      backgroundColor: Colors.white,
      title: new Text(
        "Registration",
        style: new TextStyle(color: Colors.blueAccent, fontSize: 17.0),
      ),
      elevation: 0.0,
      centerTitle: true,
      leading: new IconButton(
        color: Colors.blueAccent,
        icon: new Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );

    // Category Widget
    Widget _staminaCategory = new Container();

    Widget _regBody = new ListView(
      children: <Widget>[
        new Container(
          //height: 20,
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        new Container(
            child: new Text(
          "What is your athletic level?",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        )),
        const SizedBox(height: 20),
        new Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: new Table(children: [
              TableRow(children: [
                StaminaCategory(
                    'images/reg_somelevel_1.png', "Some level", () => {}),
                StaminaCategory(
                    'images/reg_somelevel_2.png', "Some level", () => {})
              ]),
              TableRow(children: [
                StaminaCategory(
                    'images/reg_somelevel_3.png', "Some level", () => {}),
                StaminaCategory(
                    'images/reg_somelevel_4.png', "Some level", () => {})
              ]),
            ])),
        const SizedBox(
          height: 30,
        ),
        new Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: new CupertinoButton(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //new Image.asset('images/instagram.png'),
                new Expanded(
                    child: new Text("NEXT",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)))
              ],
            ),
            color: Colors.blueAccent,
            pressedOpacity: 0.5,
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => BluConnectPage())),
          ),
        ),
        const SizedBox(height: 35)
      ],
    );

    return new Scaffold(
      appBar: _appBar,
      body: _regBody,
    );
  }
}
