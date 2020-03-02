import 'package:flutter/material.dart';

import 'mainpage.dart';

void main()=>runApp(Home());


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Mumbai",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.blueAccent),
      home: MainPage(),
    );
  }
}


