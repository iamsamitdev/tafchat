import 'package:flutter/material.dart';
import 'package:tafchat/utils/constants.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: Image.asset('assets/images/ic_launcher.png',),
          title: Text(title_account_screen),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      // hintText: 'Input XMPP Username',
                      helperText: 'Input XMPP Username'
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      helperText: 'Input XMPP Password'
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Hostname (optional)',
                      helperText: 'Input your hostname'
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Resource',
                    ),
                    initialValue: 'Openfire',
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Nickname (optional)',
                      helperText: 'Input your nickname'
                    ),
                  ),
                ],
              )
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/welcome');
                    }, 
                    child: Text('CANCEL', style: TextStyle(fontSize: 20),)
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home');
                    }, 
                    child: Text('SIGNIN', style: TextStyle(fontSize: 20),)
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}