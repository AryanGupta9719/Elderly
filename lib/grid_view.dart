import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grid extends StatelessWidget{
  var arrcolor=[
    Colors.orangeAccent,
  Colors.orange,
  Colors.redAccent,
  Colors.black,
  Colors.brown,
  Colors.blue,
  Colors.blueGrey,
  Colors.yellowAccent,
  Colors.yellow,
  Colors.grey,
  Colors.green
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('grid view '),
     ),
     body: Column
       (
       mainAxisAlignment: MainAxisAlignment.center,
       children: [



         OutlinedButton(onPressed: (){
           Navigator.push(context ,MaterialPageRoute(builder: (context)=> grid() ), );

         }, child: Text('Notes ',style: TextStyle(color: Colors.black,
         ))),
         OutlinedButton(onPressed: (){
           Navigator.push(context ,MaterialPageRoute(builder: (context)=> grid() ), );

         }, child: Text('Emergncy Contacts ',style: TextStyle(color: Colors.black,
         ),)),
         OutlinedButton(onPressed: (){
           Navigator.push(context ,MaterialPageRoute(builder: (context)=> grid() ), );

         }, child: Text('Alarm ',style: TextStyle(color: Colors.black,
         )))
       ],

     ),
     
   );
   
  }
  
}