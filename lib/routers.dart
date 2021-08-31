import 'package:flutter/material.dart';
import 'package:tafchat/screens/account/AccountScreen.dart';
import 'package:tafchat/screens/home/HomeScreen.dart';
import 'package:tafchat/screens/welcome/WelcomeScreen.dart';

// สร้างตัวแปรแบบ Map ไว้เก็บ URL และ Screen

Map<String, WidgetBuilder> routes = {
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/account": (BuildContext context) => AccountScreen(),
  "/home": (BuildContext context) => HomeScreen(),
};