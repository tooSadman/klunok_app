import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:klunok/Pages/registration_info_stamina_page.dart';

class RegistrationInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistrationInfoState();
  }
}

class RegistrationInfoState extends State<RegistrationInfoPage> {
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

    Widget _regBody = new ListView(
      children: <Widget>[
        new Container(
          //height: 20,
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        new Container(
            child: new Text(
          "Tell a little about yourself",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        )),
        const SizedBox(height: 20),
        new Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: new Column(children: <Widget>[
            new TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(15))),
                labelText: 'Name',
              ),
              maxLines: 1,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            new TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(15))),
                labelText: 'Sex',
              ),
              maxLines: 1,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(15))),
                labelText: 'Age',
              ),
              maxLines: 1,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(15))),
                labelText: 'Weight',
              ),
              maxLines: 1,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(15))),
                labelText: 'Height',
              ),
              maxLines: 1,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            new CupertinoButton(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  //new Image.asset('images/instagram.png'),
                  new Expanded(
                      child: new Text("NEXT",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold
                          )))
                ],
              ),
              color: Colors.blueAccent,
              pressedOpacity: 0.5,
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationStaminaPage())),
            ),
            const SizedBox(height: 35)
          ]),
        )
      ],
    );

    return new Scaffold(
      appBar: _appBar,
      body: _regBody,
    );
  }
}
