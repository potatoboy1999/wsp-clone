import 'package:flutter/material.dart';

import 'Home.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wsp Clone',
      theme: new ThemeData(
        primaryColor: new Color(0xff1c242b),
        backgroundColor: new Color(0xff0d171e),
        accentColor: new Color(0xFF008d7d),
      ),
      home: new Home(),
    );
  }
}
