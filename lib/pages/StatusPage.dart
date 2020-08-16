import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: EdgeInsets.all(5),
      child: new Center(
        child: new Card(
          color: Theme.of(context).backgroundColor,
          elevation: 1.0,
          child: new Text("STATUS",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
