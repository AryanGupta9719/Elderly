import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text('no appointment currently',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ),
        ),
      ),
    );
  }
}