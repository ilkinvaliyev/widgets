import 'package:flutter/material.dart';
import 'package:widgets/ui/etkin_liste.dart';
import 'package:widgets/ui/lists.dart';

void main(){
  runApp(MaterialApp(
    title: "Scrolling Lessons",
    theme: ThemeData(
      primarySwatch: Colors.deepOrange
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Scrolling Lessons App Bar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

      ),
      body: EtkinListe(),
    ),
  ));
}