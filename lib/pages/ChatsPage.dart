import 'package:flutter/material.dart';
import 'package:flutter_practice_1/models/chat_model.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context,i)=>new Column(
        children: <Widget>[
          new Divider(
            height: 10,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new AssetImage(chats[i].avatarUrl),
              minRadius: 25,
              maxRadius: 25
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(chats[i].name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                new Text(chats[i].time,style: TextStyle(color: Colors.grey, fontSize: 12.0))
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top:5),
              child: new Text(chats[i].message,style: TextStyle(color: Colors.grey, fontSize: 15),),
            ),
          ),
        ],
      ),
    );
  }
}
