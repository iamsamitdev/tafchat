import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tafchat/routers.dart';
import 'package:tafchat/themes/style.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
      runApp(MyApp());
  });

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TAF Chat',
      theme: appTheme(),
      initialRoute: '/welcome',
      routes: routes,
    );
  }
}
