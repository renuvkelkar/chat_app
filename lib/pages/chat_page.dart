import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:chatapp/styleguide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  final User user;
  ChatPage({this.user});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  _buildMessage(Message message,bool isMe){
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: isMe ? EdgeInsets.only(top: 8,bottom: 8,left: 80):EdgeInsets.only(top: 8,bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      decoration: BoxDecoration(
        color: isMe? Colors.black : Colors.grey.withOpacity(0.1),
        borderRadius:isMe? BorderRadius.only(
          topLeft:  Radius.circular(40.0),
        ):BorderRadius.only(
          topRight:  Radius.circular(40.0),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.time,style: TextStyle(color: isMe? Colors.amber:Colors.blueGrey),),
          SizedBox(height: 6,),
          Text(message.text,style: TextStyle(
              color: isMe? Colors.white:Colors.black
          ),),
        ],
      ),
    );
    if(isMe){
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,

    IconButton(
          icon: message.isLiked
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: message.isLiked
              ? Theme.of(context).primaryColor
              : Colors.blueGrey,
          onPressed: () {},
        )

      ],
    );

  }
  _buildMessageComposer(){
    return Container(
      margin: EdgeInsets.only(top: 3),
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide( //                    <--- top side
            color: Colors.amber,
            width: 2.0,
          ),
        ),
      ),

      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.photo),
            color: Colors.amber,
            onPressed: (){},),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.send),
            color: Colors.amber,
            onPressed: (){},),
        ],
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(widget.user.name,style: AppTheme.heading1,),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert),onPressed: (){},),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context,int Index){
                      final Message message = messages[Index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message,isMe);

                }),
              ),
            ),
          ),
          _buildMessageComposer()
        ],
      ),

    );
  }
}
