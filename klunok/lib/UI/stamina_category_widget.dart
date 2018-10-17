import 'package:flutter/material.dart';

class StaminaCategory extends StatelessWidget {
  final String _itemImage;
  final String _itemText;
  final VoidCallback _onTap;

  StaminaCategory(this._itemImage, this._itemText, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 0.1,
      child: new Material(
          child: new InkWell(
              onTap: () => _onTap(),
              child: new Center(
                child: new Padding(
                    padding: new EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                    child: new Column(children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Expanded(
                              child: new Container(
                            child: new Image.asset(
                              _itemImage,
                              fit: BoxFit.fill,
                            ),
                          )),
                          new Opacity(
                            opacity: 0.0,
                              child: new Image.asset(
                            'images/reg_check_mark.png',
                            height: 20,
                            width: 20,
                          ))
                        ],
                      ),
                      const SizedBox(height: 10),
                      new Text(
                        _itemText,
                        style: TextStyle(),
                      ),
                    ])),
              ))),
    );
  }
}
