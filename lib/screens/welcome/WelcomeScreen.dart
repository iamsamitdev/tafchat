import 'package:flutter/material.dart';
import 'package:tafchat/themes/style.dart';
import 'package:tafchat/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:40),
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ic_launcher.png')
                  ),
                  borderRadius: BorderRadius.circular(60)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(welcome_h1_text, style: TextStyle(fontSize: 30),),
                Text(welcome_h2_text, style: TextStyle(fontSize: 24),),
                SizedBox(height: 20,),
                Text(welcome_p_text, style: TextStyle(fontSize: 14),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),            
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/account');
                  }, 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(button_have_account, style: TextStyle(fontSize: 18),),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    )
                  ),
                ),
                SizedBox(height: 5),
                TextButton(
                  onPressed: (){}, 
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(button_create_account, style: TextStyle(fontSize: 18),),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: appTheme().primaryColor)
                      )
                    )
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}