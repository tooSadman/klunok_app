import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:klunok/Pages/home_page.dart';

class BluConnectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BluConnectState();
  }
}

class BluConnectState extends State<BluConnectPage> {
  @override
  Widget build(BuildContext context) {
    //  AppBar Widget
    Widget _appBar = new AppBar(
      backgroundColor: Colors.white,
      title: new Text(
        "Connection to the backpack",
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

    Widget _regBody = new Column(
      children: <Widget>[
        new SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        new Expanded(
            child: new Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image:
                            new AssetImage('images/bluetooth_background.png'),
                        fit: BoxFit.cover)),
                child: new Column(children: <Widget>[
                  new Text(
                    "The last step!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  new Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: new Text(
                      'Turn on the bluetooth and connect your phone to your backpack',
                      softWrap: true,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  new SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5),
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
                              child: new Text("CONNECT",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)))
                        ],
                      ),
                      color: Colors.blueAccent,
                      pressedOpacity: 0.5,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage())),
                    ),
                  ),
                  const SizedBox(height: 35)
                ]))),
      ],
    );

    return new Scaffold(
      appBar: _appBar,
      body: _regBody,
    );
  }
}
