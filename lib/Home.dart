import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice_1/pages/CallsPage.dart';
import 'package:flutter_practice_1/pages/CameraPage.dart';
import 'package:flutter_practice_1/pages/ChatsPage.dart';
import 'package:flutter_practice_1/pages/StatusPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length:4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: new AppBar(
        title: new Text('WhatsApp',style: TextStyle(color: Colors.grey),),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: new Color(0xff0a7d71),
          labelColor: new Color(0xff0a7d71),
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS",),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS",)
          ],
        ),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search,color: Colors.grey,), onPressed: (){},tooltip: "Search",),
          new IconButton(icon: new Icon(Icons.more_vert,color: Colors.grey,), onPressed: (){},tooltip: "More",),
        ],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraPage(),
            new ChatsPage(),
            new StatusPage(),
            new CallsPage()
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){print("new Chat");},
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.chat),
      ),
    );
  }
}

