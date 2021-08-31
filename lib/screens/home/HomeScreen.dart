import 'package:flutter/material.dart';
import 'package:tafchat/screens/chat/ChatScreen.dart';
import 'package:tafchat/screens/contact/ContactScreen.dart';
import 'package:tafchat/screens/group/GroupScreen.dart';
import 'package:tafchat/utils/constants.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return [
              SliverAppBar(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  // child: Image.asset('assets/images/samit_profile.png'),
                  child: Badge(
                  position: BadgePosition.bottomEnd(),
                  badgeColor: Colors.green,
                  badgeContent: Text(" "),
                  child: Image.asset('assets/images/samit_profile.png'),
                ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(account_name),
                    Text(account_status, style: TextStyle(fontSize: 12),),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.search)
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.menu)
                  )
                ],
                floating: true,
                pinned: true,
                snap: true,
                bottom: TabBar(
                  tabs: [
                    Tab(text: contact_tabmenu_text,),
                    Tab(text: chat_tabmenu_text,),
                    Tab(text: group_tabmenu_text,),
                  ]
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              ContactScreen(),
              ChatScreen(),
              GroupScreen()
            ],
          )
        ),
      ),
    );
  }
}