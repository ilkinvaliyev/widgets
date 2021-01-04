import 'dart:math';

import 'package:flutter/material.dart';

class CollapseToolBarLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sliver App Bar"),
          backgroundColor: Colors.green.shade200,
          expandedHeight: 300,
          //hundurluk 200px olur. App Barda.  eger scroll olarsa app bar yuxariya dogru daralir

          floating: false,
          // scrollu yuxari edende, yuxaridaki appbar gorunmur. en asagiya enenden sonra bele bir defe yuxaridan
          //asagiya az biraz scroll edende appbar gorunur. false edende ise, butun siyahini yuxariya cixmamis gorunmur

          pinned: true,
          // scroll olanda appbar-in yazisi getmir. sekil ama gedir
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            // title: Text("Sliver App Bar"),
            // centerTitle: true,
            background: Image.asset("assets/img/akita.jpg",
              fit: BoxFit.cover,), //appbar-a sekil qoyur
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver:  SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari())
          ),
        ),

        //bu griddeki elementler yanbayan gelir
        // SliverGrid(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), //burda iki elementin yanbayan gelmesini deyir
        //   delegate: SliverChildBuilderDelegate(_dinamicElementCreateFunction,childCount: 6),
        // //  delegate: SliverChildListDelegate(sabitListeElemanlari()),
        // ),
        //
        // SliverGrid(
        //     delegate: SliverChildBuilderDelegate(_dinamicElementCreateFunction,childCount: 8),
        //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100) // burda ise 100px genisliyinde olmasini deyir
        // ),
        //
        // SliverPadding(
        //   padding: EdgeInsets.all(6),
        //   sliver: SliverList(
        //     delegate: SliverChildBuilderDelegate(
        //       _dinamicElementCreateFunction, childCount: 6),
        //   ),
        // ),
        // SliverFixedExtentList(
        //     delegate: SliverChildListDelegate(
        //       sabitListeElemanlari()
        //     ),
        //     itemExtent: 250
        // ),
        // SliverFixedExtentList(
        //     delegate: SliverChildBuilderDelegate(
        //       _dinamicElementCreateFunction,childCount: 12
        //     ),
        //     itemExtent: 50
        // )
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        child: Text("Static List Element", style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text("Static List Element", style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text("Static List Element", style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,),
        color: Colors.deepOrange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text("Static List Element", style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text("Static List Element", style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text("Static List Element", style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,),
        color: Colors.green,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamicElementCreateFunction(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dynamic List Element : ${++index}", style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,),
      color: randomColor(),
      alignment: Alignment.center,
    );
  }

  Color randomColor() {
    Random random = new Random();
    int a = random.nextInt(255);
    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);

    return Color.fromARGB(a, r, g, b);
  }
}


/*
        title: Text("Sliver App Bar"),
          backgroundColor: Colors.green.shade200,
          expandedHeight: 300,
          //hundurluk 200px olur. App Barda.  eger scroll olarsa app bar yuxariya dogru daralir

          floating: true,
          // scrollu yuxari edende, yuxaridaki appbar gorunmur. en asagiya enenden sonra bele bir defe yuxaridan
          //asagiya az biraz scroll edende appbar gorunur. false edende ise, butun siyahini yuxariya cixmamis gorunmur

          pinned: true,  // scroll olanda appbar-in yazisi getmir. sekil ama gedir
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            // title: Text("Sliver App Bar"),
            // centerTitle: true,
            background: Image.asset("assets/img/akita.jpg", fit: BoxFit.cover,),  //appbar-a sekil qoyur
          ),
 */