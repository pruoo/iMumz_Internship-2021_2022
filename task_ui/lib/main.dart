import 'package:flutter/material.dart';
import 'package:task_ui/mainpage.dart';
import 'package:task_ui/piyush.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(body1: TextStyle(fontFamily: "Courier Sans"))),
      title: 'Flutter Demo',
      home: const MainPage(),
    );
  }
}
