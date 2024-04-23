import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class contacts extends StatefulWidget{

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    var arrNames=['Hospital ','Police','Son ','Daughter','Neighbours','Husband','wife','doctor','doctors wife '];
  return Scaffold(
    body:
    ListView.separated(itemBuilder: (context,index){
      return Column(
        children: [
          Text(arrNames[index],style:
          TextStyle(fontSize: 12,
              fontWeight:
              FontWeight.w900),),
      Icon(Icons.account_circle)
        ],

      );

   },itemCount: arrNames.length,
      scrollDirection: Axis.vertical,
      separatorBuilder:(context,index){
      return   Divider(
        height: 80,
      );
        },

    ),

  );
  }
}