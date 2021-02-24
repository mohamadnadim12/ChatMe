import 'package:chat_me/const.dart';
import 'package:chat_me/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ChatMe',
        theme: ThemeData(
          primaryColor: themeColor,
        ),
        home: LoginScreen(
          title: 'ChatMe',
        ));
  }
}
