import 'package:flutter/material.dart';
import 'package:widgets/ui/form_isleri.dart';
import 'package:widgets/ui/navigation_operations.dart';

void main(){
  runApp(MaterialApp(
    title: "Scrolling Lessons",

    initialRoute: "/formIsleri",

    routes: {
      '/' : (context) => NavigationOperations(),
      '/formIsleri' : (context) => FormIsleri(),
      '/APage' : (context) => APage('A Sehifesi'),
      '/BPage' : (context) => BPage('B Sehifesi'),
      '/CPage' : (context) => CPage('C Sehifesi'),
      '/DPage' : (context) => DPage('D Sehifesi'),
      '/FPage' : (context) => FPage('F Sehifesi'),
      '/DPage/FPage' : (context) => FPage('F Sehifesi'),
      '/list-page' : (context) => ListClass(),
    },

    onGenerateRoute: (RouteSettings settings) {
      List<String> pathElements = settings.name.split("/");  //  /listDetail/$index

      if(pathElements[1] == 'listDetail'){
        return MaterialPageRoute(builder: (context) => ListDetail(int.parse(pathElements[2])));
      }

      return null;
    },
    
    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context) => DPage('404')),

    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
   //   brightness: Brightness.dark   //arxa fon rengini qara edir
    ),
    debugShowCheckedModeBanner: false,
    // home: NavigationOperations()
  ));
}