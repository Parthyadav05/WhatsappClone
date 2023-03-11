

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/main.dart';

class SplashScreen extends StatefulWidget{
  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: ""),)
      ); });
  }
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.fromLTRB(60,300,0,0),
              child: Container(
                height: 130,
                width: 130,

                 child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.lightGreen,size: 90),
              ),

            ),
          ),

           Padding(
             padding: const EdgeInsets.only(left: 0,top: 250),
             child: Container(
              child: Text('from',style: TextStyle(color: Colors.grey,fontSize: 15),),
          ),
           ),
          Container(
            child: Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: FaIcon(FontAwesomeIcons.meta,color: Colors.lightGreen,),
              ),
                Text('Meta',style:TextStyle(fontSize: 25,color: Colors.lightGreen))
              ],
            ),
          )

        ],
      ),
    );

  }
}