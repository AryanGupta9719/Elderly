import 'package:anime/palce_notes.dart';

import 'package:flutter/material.dart';
import 'package:anime/notes_page.dart';
import 'package:flutter/cupertino.dart';

import 'note_model.dart';

class notes extends StatefulWidget{

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  List<Note> notes=List.empty(growable: true);
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {

   return Scaffold(
    appBar: AppBar(
      title: const  Text("Flutter Notes"),
    ),
     body: ListView.builder(
       itemCount: notes.length,
       itemBuilder: (context,index){
         return InkWell(
           onTap: (){

           },
           child: Card(
             child: Padding(padding: const EdgeInsets.all(8),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     notes[index].title
                         ,style: TextStyle(fontSize: 30),
                   ),
                   const SizedBox(height: 10,),
                   Text(
                     notes[index].body
                     ,style: TextStyle(fontSize: 15),
                       maxLines:2,
                     overflow: TextOverflow.ellipsis,
                   ),

                 ],
               ),


             ),
           ),
         );
       },



     ),

     floatingActionButton: FloatingActionButton(onPressed: () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>placenotes(onNewNoteCreated :onNewNoteCreated)));
     },
       child: const  Icon(Icons.add),


     ),
   );

  }
  void onNewNoteCreated(Note note ){
    notes.add(note);
    setState(() {

    });
  }
  void onNewNoteDeleted(int index){
    notes.removeAt(index);
    setState(() {

    });

  }
}