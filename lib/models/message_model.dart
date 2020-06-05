

import 'package:chatapp/models/user_model.dart';

class Message {
  final User sender;
  final String
      time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/try1.png',
);

// USERS
final User greg = User(
  id: 1,
  name: 'milly',
  imageUrl: 'assets/images/face2.png',
);

final User john = User(
  id: 2,
  name: 'John',
  imageUrl: 'assets/images/face3.png',
);
final User olivia = User(
  id: 3,
  name: 'Olivia',
  imageUrl: 'assets/images/face4.png',
);
final User sam = User(
  id: 4,
  name: 'Sam',
  imageUrl: 'assets/images/face5.png',
);
final User sophia = User(
  id: 5,
  name: 'Sophia',
  imageUrl: 'assets/images/face6.png',
);
final User steven = User(
  id: 6,
  name: 'Steven',
  imageUrl: 'assets/images/face7.png',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [

  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [

  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '3:30 PM',
    text: 'Hello! What kind of food did you eat?',
    isLiked: true,
    unread: true,
  ),

  Message(
    sender: currentUser,
    time: '3:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),


  Message(
    sender: greg,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat? Do you like Sweet more or Spicy more',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: greg,
    time: '3:30 PM',
    text: 'Hello! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '3:30 PM',
    text: 'Hello! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '3:30 PM',
    text: 'Hello! What kind of food did you eat?',
    isLiked: true,
    unread: true,
  ),

];
