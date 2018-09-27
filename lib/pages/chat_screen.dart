import 'package:flutter/material.dart';
import 'package:whatsapp_clone_one/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
       itemCount: dummyChat.length,
       itemBuilder: (context,i)=> new Column(
         children : <Widget> [
           new Divider(
             height : 10.0
           ),
           new ListTile(
             leading : new CircleAvatar(
               foregroundColor: Theme.of(context).primaryColor,
               backgroundColor: Colors.grey,
               backgroundImage: new NetworkImage(dummyChat[i].image), 
             ),
             title : new Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children : <Widget> [
                 new Text(dummyChat[i].name,style : new TextStyle(fontWeight: FontWeight.bold)),
                new Text(
                  dummyChat[i].time,style : new TextStyle(fontSize: 14.0, color: Colors.grey)
                )
               ]
             ),
             subtitle: new Container(
               padding : const EdgeInsets.only(top: 5.0),
               child : new Text(
                 dummyChat[i].message,style : new TextStyle(fontSize: 15.0, color: Colors.grey)
                 
               )
             ),
           )
         ]
       ),
    );
  }
}

