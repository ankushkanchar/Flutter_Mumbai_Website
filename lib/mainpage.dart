import 'dart:async';

import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

double showtext= 0.0 ;

@override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) { 
      setState(() {
        showtext = 100.0;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black87 ,
        title:Center(child: Text('Flutter Mumbai',style:TextStyle(letterSpacing: 2.0,
          shadows:[
            Shadow(color: Colors.blue,blurRadius: 20.0,offset: Offset(2, -2))
          ] ),),
      ),
         centerTitle: true,
         
      elevation: 2.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
            Colors.blueAccent,
            Colors.black12,
            Colors.white38,
             Colors.white,
              Colors.white38,
              Colors.black12,
              Colors.blueAccent
          ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                  AnimatedContainer(
                  height:showtext + showtext *0.9,
                  duration: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  child: Text('Welcome to Flutter Mumbai Community',
                  style:TextStyle(letterSpacing: 2.0,fontSize:MediaQuery.of(context).size.width/30.0,
                     shadows:[
              Shadow(color: Colors.blue,blurRadius: 20.0,offset: Offset(2, -2))
            ] ),
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}