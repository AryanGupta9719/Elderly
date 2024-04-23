import 'package:anime/notes_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Column, EdgeInsets, FloatingActionButton, Icon, Icons, InputBorder, InputDecoration, Padding, Scaffold, SizedBox, State, StatefulWidget, Text, TextEditingController, TextFormField, TextStyle, Widget;

import 'note_model.dart';

class placenotes extends StatefulWidget{
  const placenotes({super.key,required this.onNewNoteCreated});
  final Function(Note) onNewNoteCreated;
  @override
  State<placenotes> createState() => _placenotesState();
}

class _placenotesState extends State<placenotes> {
  final titleCon = TextEditingController();
  final bodyCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('New Note '),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleCon,
              style: const TextStyle(fontSize: 28),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
              ),

            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                controller: bodyCon,
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Body",
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (titleCon.text.isEmpty) {
          return;
        }
        if (bodyCon.text.isEmpty) {
          return;
        }
        final note = Note(
            title:titleCon.text,
    body : bodyCon.text,

        );
        widget.onNewNoteCreated(note);
        Navigator.of(context).pop()
;      },
        child: const Icon(Icons.save),
      ),

    );
  }
}