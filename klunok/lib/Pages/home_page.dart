import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:klunok/UI/stamina_category_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //  AppBar Widget
    Widget _appBar = new AppBar(
      automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: new Text(
          "Health",
          style: new TextStyle(color: Colors.black, fontSize: 17.0),
        ),
        elevation: 0.0,
        centerTitle: true,
        leading: new Row(children: <Widget>[
          new IconButton(
              iconSize: 32,
              color: Colors.blueAccent,
              icon: new Icon(Icons.battery_charging_full),
              onPressed: () => {}),
          new Text(
            '69%',
            style: TextStyle(color: Colors.black),
          )
        ]),
        actions: <Widget>[
          new IconButton(
            iconSize: 32,
            color: Colors.black,
            icon: new Icon(Icons.perm_identity),
            onPressed: () => {},
          )
        ]);

    // Category Widget
    BottomNavigationBar _bottomNavBar = new BottomNavigationBar(
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: new Image.asset('images/health_logo.png', width: 32,),
          title: new Text('Health'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.security),
          title: new Text('Security'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text('Settings'))
      ],
    );

    Widget _regBody = new ListView(
      children: <Widget>[
        const SizedBox(height: 20),
        new Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: new Image.asset('images/home_page_round_diagram.png')),
        const SizedBox(height: 10),
        new Center(
          child: new Column(children: <Widget>[
            new Text(
              'Your back is in the normal state.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            new Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: new Text(
                'Go to the assistant to learn how to improve your level.',
                softWrap: true,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            )
          ]),
        ),
        const SizedBox(height: 10),
        new Center(
            child: new Image.asset(
          'images/dots.png',
          height: 20,
          width: 40,
        )),
        const SizedBox(height: 30),
        new Container(
          padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08),
                  child: new Image.asset('images/home_page_dia_1.png')
        ),
        
        new Container(
          padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08),
                  child: new Image.asset('images/home_page_dia_2.png')
        ),
        
        new Container(
          padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08),
                  child: new Image.asset('images/home_page_dia_3.png')
        ),
      ],
    );

    return new Scaffold(
      appBar: _appBar,
      body: _regBody,
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
