import 'package:flutter/material.dart';
import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  TabController _tab_controller;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tab_controller = new TabController(vsync : this, initialIndex : 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar : new AppBar(
        title : new Text("WhatsApp"),
        elevation: 0.7,           
        bottom: new TabBar(
         controller: _tab_controller,
         indicatorColor : Colors.white,
         tabs: <Widget>[
           new Tab(icon : new Icon(Icons.camera_alt)),
           new Tab(text : "CHATS"),
           new Tab(text : "STATUS"),
           new Tab(text : "CALLS")
         ]
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding : const EdgeInsets.symmetric(horizontal : 5.0)
          ),
          new Icon(Icons.more_vert),
          new Padding(
            padding : const EdgeInsets.symmetric(horizontal : 5.0)
          )
        ],
      ),
      body: new TabBarView(
        controller: _tab_controller,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen()
        ],
      ), 
      floatingActionButton: new FloatingActionButton(
        backgroundColor : Theme.of(context).primaryColor,
        child : new Icon(Icons.message, color: Colors.white,),
        onPressed: ()=> print("Open Chats"),
      ),
    );
  }
}