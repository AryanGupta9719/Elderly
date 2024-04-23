import 'package:anime/appointmenta.dart';
import 'package:anime/fruits_adv.dart';
import 'package:anime/notes_page.dart';
import 'package:anime/stop_watch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'emg_contacts.dart';
import 'login_page.dart';

class afterlogin extends StatelessWidget {


  var imagesList=["assets/images/apple.jpeg","assets/images/Avacado.jpeg","assets/images/Berries.jpeg","assets/images/olives.jpeg","assets/images/spainish.jpeg","assets/images/wheat.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffcbcaa5),
        body: SafeArea(
          child: Column(
                children: [
          Container(height: 100,

            child: ListView.builder(

              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child:InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fruit()
                  ));} ,
                  child: CircleAvatar(
                      radius: 41,
                      backgroundImage: AssetImage(imagesList[index]),


                        ),
                ),


              ),

              itemCount: imagesList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),


          Expanded(flex: 2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffcfd9df),
                              Color(0xffd7d2cc),

                            ]
                        ),
                       borderRadius:BorderRadius.circular(15),
                        border: Border.all(
                          width: 4,
                          color: Colors.black


                        ),

                    ),
               
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>contacts()));
                    }, child:Text('Emergency call',style: TextStyle(fontSize: 21,fontFamily: 'font-main-1',color: Colors.black),) ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffcfd9df),
                              Color(0xffd7d2cc),

                            ]
                        ),
                        borderRadius:BorderRadius.circular(15),
                        border: Border.all(
                            width: 4,
                            color: Colors.black


                        ),

                    ),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>stopwatch()));
                    }, child:Text('Lets workout',style: TextStyle(fontSize: 21,fontFamily: 'font-main-1',color: Colors.black),) ),

                  ),
                ),
              ],
            ),
          ),
          Expanded(flex: 6,
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: SizedBox(
                child: Column(
                  children: [
                    SizedBox(height: 200,
                      child: ListView(shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xffcfd9df),
                                        Color(0xffd7d2cc),

                                      ]
                                  ),
                                  borderRadius:BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 4,
                                      color: Colors.black


                                  ),

                              ),
                              child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>notes()));
                              }, child:Text('Notes',style: TextStyle(fontSize: 21,fontFamily: 'font-main-1',color: Colors.black),) ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                              height: 150,
                              width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffcfd9df),
                                    Color(0xffd7d2cc),

                                  ]
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 4,
                                color: Colors.black
                              ),
                            ),
                              child:TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>appointments()));
                              }, child:Text('My Appointments',style: TextStyle(fontSize: 21,fontFamily: 'font-main-1',color: Colors.black),) ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 500,
                      child:

                            Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 500,
                                          width: 500,
                                          child: Image.asset('assets/images/lalpath.jpeg'),
                                        ),
                                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),

                        child: RawMaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));},
                          fillColor: Colors.white70,
                          shape: StadiumBorder(),
                          child: Text('logout',style: TextStyle(fontSize: 23),),

                        )
                    )

                  ],
                ),
              ),
            ),
          ),
                ],
              ),
        ),
    );
  }
}
