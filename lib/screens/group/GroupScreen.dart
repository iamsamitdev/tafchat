import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: 
        List.generate(20, (index) => 
          ListTile(
            leading: Icon(Icons.group_work, size: 50,),
            title: Text('IT Support Group ${index+1}'),
            subtitle: Text('last seen 30 ส.ค 2021 ', style: TextStyle(fontSize: 14),),
            onTap: (){},
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.group_add)
      ),
    );
  }
}