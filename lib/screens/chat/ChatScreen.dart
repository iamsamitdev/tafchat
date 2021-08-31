import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: 
        List.generate(20, (index) => 
          ListTile(
            leading: Badge(
              position: BadgePosition.bottomEnd(),
              badgeColor: Colors.green,
              badgeContent: Text(" "),
              child: Image.asset('assets/images/samit_profile.png'),
            ),
            title: Text('John Doe ${index+1}'),
            subtitle: Text('hello guy', style: TextStyle(fontSize: 14),),
            trailing: Text('20/03/2020\n80:30:45', style: TextStyle(fontSize: 12),),
            onTap: (){},
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_comment)
      ),
    );
  }
}