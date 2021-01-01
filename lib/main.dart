import 'package:flutter/material.dart';
import 'package:widgets/ui/CollapseToolBarLesson.dart';

void main(){
  runApp(MaterialApp(
    title: "Scrolling Lessons",
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
     // brightness: Brightness.dark   arxa fon rengini qara edir
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //     icon: Icon(Icons.cached),
      //     backgroundColor: Colors.pink,
      //     onPressed: (){
      //     },
      //     label: Text("Change Color")
      // ),
      // appBar: AppBar(
      //   title: Text("Grid View Lessons App Bar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      // ),
      body: CollapseToolBarLesson(),
    ),
  ));
}