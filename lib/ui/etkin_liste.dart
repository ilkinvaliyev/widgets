import 'package:flutter/material.dart';

class EtkinListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(itemBuilder: (context, index) => );
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Text("User : ${++index}"));
  }
}

class Student{

}