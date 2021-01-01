import 'package:flutter/material.dart';
import 'package:widgets/ui/grid_view.dart';

void main(){
  runApp(MaterialApp(
    title: "Scrolling Lessons",
    theme: ThemeData(
      primarySwatch: Colors.deepOrange
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Grid View Lessons App Bar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: GridViewLesson(),
    ),
  ));
}