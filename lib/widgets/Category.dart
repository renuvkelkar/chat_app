import 'package:chatapp/styleguide.dart';
import 'package:flutter/material.dart';
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int SelectedIndex =0;
  @override
  Widget build(BuildContext context) {

    final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

    return Container(
      height: 90,
      color: Colors.black,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  SelectedIndex = index;
                });
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Text(categories[index],style: TextStyle(
                  color: index == SelectedIndex ? Colors.white : Colors.white60,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                )),
              ),
            );
          }
    )
    );
  }
}
