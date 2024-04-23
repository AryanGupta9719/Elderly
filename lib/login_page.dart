
import 'package:anime/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'after.login.dart';
import 'after.splash.dart';
import 'emg_contacts.dart';

class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailtext=TextEditingController();
  var passtext=TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: Container(
      width: double.infinity,
    height:double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xfffc6076),
                Color(0xffffc3a0),

              ]
          )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

          children: [
           Icon(Icons.account_circle,size: 100,color: Colors.black),
            Container(
              width: 300,
              child: TextField(
                  controller: emailtext,
                decoration: InputDecoration(
                 hintText: 'email/username',
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.only( topLeft:Radius.elliptical(20.0, 20.0)
                            ,topRight: Radius.elliptical(20.0, 20.0)),

                        borderSide: BorderSide(
                            color: Colors.black,
                                width: 3
                        )
                    ) ,
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(20)
                  )
                ),

                ),
            ),
      SizedBox(
        height: 12,
      ),

      Container(
        width: 300,
        child: TextField(

          obscureText: true,
            obscuringCharacter: '*',

            controller:passtext,
            decoration: InputDecoration(

                hintText: 'Password',

        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.only( topLeft:Radius.elliptical(20.0, 20.0) ,topRight: Radius.elliptical(20.0, 20.0)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 3
          )
        ) ,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              suffixIcon: Icon(Icons.security)
            ),
        ),
      ),
            ElevatedButton(onPressed: ()  async {
              //if logged in and credetials are correct
            var sharedpref=await SharedPreferences.getInstance();

            sharedpref.setBool(splashscreenState.KEYLOGIN, true);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>afterlogin()));
            }, child: Text('log-in',style: TextStyle(color: Colors.black),))
      ]
      ),
    ),



  );

  }
}

















