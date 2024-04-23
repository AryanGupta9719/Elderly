import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stopwatch extends StatefulWidget{
  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {

  int seconds=0,minutes =0, hours=0;
  String digitSeconds ='00',digiMinutes ='00', digiHours ='00';
Timer ?timer;
bool started = false;
List laps =[];
void  stop(){
  timer !.cancel();
  setState(() {


     started = false ;
  });
}
void addlap(){
  String lap = "$digitSeconds:$digiMinutes:$digiHours";
  setState(() {
    laps .add(lap);

  });
}
void reset(){
  timer!.cancel();
  setState(() {
    seconds=0;
    minutes=0;
    hours=0;
    digiHours="0";
    digiMinutes="0";
    digitSeconds="0";
    started = false ;
  });

}
void start (){
  started=true;
  timer =Timer .periodic( Duration( seconds: 1), (timer) {

    int localSeconds =seconds+1;
    int localMinutes= minutes;
    int localHours = hours;
    if(localSeconds>59){
      if(localMinutes>59){
        localHours++;
        localMinutes=0;
      }else {
        localMinutes++;
        localSeconds=0;

      }
    }
    setState(() {
      seconds=localSeconds;minutes=localMinutes;hours=localHours;
      digitSeconds=(seconds>=10)?"$seconds":"0$seconds";
      digiHours=(hours>=10)?"$hours": " 0$hours";
      digiMinutes=(minutes>=10)? "$minutes":"0$minutes";


    });

  });
}
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xff72afd3),
    body :SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Stopwatch ',style:
                TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: Text('$digiHours:$digiMinutes:$digitSeconds',style:
              TextStyle( fontSize: 82,color: Colors.black),),),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xffbac8e0),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: ListView.builder(itemCount: laps.length,
                    itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Laps n${index+1}",style:
                              TextStyle(color: Colors.black,fontSize: 16.0), ),
      
                              Text("${laps[index]}",style:
                              TextStyle(color: Colors.black,fontSize: 16.0), )
                            ],
                          ),
                        )           ;
                    }),
      
              ),
              SizedBox(
                height: 20,
              ),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: RawMaterialButton(onPressed: () {
                        (!started) ? start():stop();
      
                      },
                          fillColor:  Colors.lightBlue,
                      shape: const StadiumBorder(),
                        child:Text(
                          (!started) ?"start":"pause",style:
                        TextStyle(color: Colors.black),)
                  )),
                  IconButton(onPressed: (){
      addlap();
                  }, icon:Icon(Icons.flag) ),
      
                  Expanded(
                      child: RawMaterialButton(onPressed: () {
                        reset();
                        },
                          fillColor:  Colors.lightBlue,
                          shape: const StadiumBorder(),
                          child:Text(' Reset',style:
                          TextStyle(color: Colors.black),)
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    )


  );
  }
}