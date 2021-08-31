import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
            subtitle: Text('last seen 30 ส.ค 2021', style: TextStyle(fontSize: 14),),
            onTap: (){},
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.person_add),
      ),
    );
  }
}