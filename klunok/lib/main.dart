import 'package:flutter/material.dart';
import 'package:klunok/Pages/login_page.dart';
import 'package:klunok/Pages/registration_info_page.dart';
import 'package:klunok/Pages/registration_info_stamina_page.dart';
import 'package:klunok/Pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Center(
              child: RaisedButton(
                child: Text("Foo"),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
              ),
            ),
      ),
    );
  }
}
