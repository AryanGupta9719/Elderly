import 'package:anime/emg_contacts.dart';
import 'package:flutter/material.dart';




class after_splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(

                flex:1,
                child: Container(
                  color: Colors.blueGrey,

                  child: ListView.builder(itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(

                      width: 60,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),itemCount: 9,scrollDirection: Axis.horizontal,
                  ),
                ),

              ),





              Expanded(
                flex: 2,
                child: Container(

                  color: Colors.blue,
                  child: GridView.builder(gridDelegate:
                  SliverGridDelegateWithMaxCrossAxisExtent(crossAxisSpacing: 4, maxCrossAxisExtent: 200)
                    , itemCount:1, itemBuilder: ( context,  index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.grey,
                                    child: TextButton(onPressed: (){
                                      print('lala');
                                    }, child:Text('alarm') )
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.grey,
                                    child: TextButton(onPressed: (){

                                    }, child:Text('guddu') )
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.grey,
                                    child: TextButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>contacts()));
                                    }, child:Text('Emergency call') )
                                ),
                              ),
                              SizedBox(
                                width: 10,

                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.grey,
                                    child: TextButton(onPressed: (){
                                      print('lala');
                                    }, child:Text('My History ') )
                                ),
                              ),
                            ],
                          ),
                        ),

                      );

                    }, ),

                ),
              ),
              Expanded(
                  flex:2,
                  child: ListView.builder(itemBuilder: (context,index)=>
                      Container(


                        color: Colors.lightGreenAccent,
                      )
                  )

              ),

              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Container(
                        width: 400,
                        height: 400,

                        child: Center(
                          child: Text('Advertisements',style:  const TextStyle(
                              fontSize: 31
                          ),),
                        ),
                      ),
                    ),

                  ),
                ),

              ),


            ],
          ),
        )





    );
  }

}