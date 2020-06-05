import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/styleguide.dart';
import 'package:chatapp/widgets/Category.dart';
import 'package:chatapp/widgets/Favorite.dart';
import 'package:chatapp/widgets/RecentChats.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe3ba4b),
      appBar: AppBar(title: Text("Chat App",style: AppTheme.heading1,),
      centerTitle: true,
      leading:
      IconButton(icon: Icon(Icons.menu),onPressed: (){},),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search),onPressed: (){},),
      ],
      elevation: 0,),
      body: Column(
        children: <Widget>[
          Category(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color:Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Favorite(),
                RecentChats(),
              ],
            ),
          ),
        ),

        ],
      ),
    );
  }
}
