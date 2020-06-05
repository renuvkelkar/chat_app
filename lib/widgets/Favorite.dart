import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/pages/chat_page.dart';
import 'package:flutter/material.dart';
class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20,),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(icon: Icon(Icons.more_horiz),onPressed: (){},),
              ],
            ),
          ),
          Container(
            height: 120,

            child: Padding(
              padding:  EdgeInsets.only(left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                  itemBuilder: (BuildContext contex, int Index){
                  return InkWell(
                    onTap:()=>Navigator.push(context, MaterialPageRoute(
                        builder: (_)=>ChatPage(
                          user: favorites[Index],
                        )
                    )),
                    child: Padding(
                      padding:  EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(favorites[Index].imageUrl),
                          ),
                          SizedBox(height: 10,),
                          Text(favorites[Index].name,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)


                        ],
                      ),
                    ),
                  );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
