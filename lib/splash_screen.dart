import 'dart:async';

import 'package:anime/after.login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'login_page.dart';

class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => splashscreenState();
}

class splashscreenState extends State<splashscreen> {
  static const String KEYLOGIN="log-in";
  @override
  void initState() {

    super.initState();
 whereToGo();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xfffc6076),
      Color(0xffffc3a0),

    ]
  )
),
      child: Center(child: Text('Elderly ',
        style: TextStyle(fontSize: 51,
            fontWeight: FontWeight.w900,fontFamily: 'font-main'
            ),),
      ),
    ),

  );
  }

  void whereToGo() async{
    var sharedprref= await SharedPreferences.getInstance();
    var isLoggedin =sharedprref.getBool(KEYLOGIN);
    var isLoggedout =sharedprref.getBool(KEYLOGIN);
    Timer( Duration(seconds: 1), () {
      if(isLoggedin!=null){
        if(isLoggedin){
        //kaam jo 3 sec baad hoga
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> afterlogin(),) );
        }
        else{
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=> login(),) );
        }

      }
      else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> login(),) );
      }

    });


  }
}

