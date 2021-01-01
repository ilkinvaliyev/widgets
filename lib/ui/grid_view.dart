import 'package:flutter/material.dart';

class GridViewLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        primary: false,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.pink.shade700,
                  //   width: 5,
                  //   style: BorderStyle.solid
                  // ),
                border: new Border(
                  top: new BorderSide(
                    color: Colors.pink.shade700,
                    width: 5,
                    style: BorderStyle.solid
                  ),
                  left: new BorderSide(
                    color: Colors.pink.shade300,
                    width: 4,
                    style: BorderStyle.solid
                  )
                ),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                  color: Colors.blue[100 * ((index + 1) % 9)],
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.red],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                      image: AssetImage("assets/img/akita.jpg"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter)),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Hi Flutter :)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
          );
        });
  }
}

/*

GridView.extent(
      maxCrossAxisExtent: 100,
    //  reverse: true,  // tersine yazdirir. en sonuncu elemandan baslayir yazdirmaga
      primary: false,  // eger false olarsa, butun elemanlar ekrana sigirsa, scroll etmir. yeni asagi falan scroll etmek isteyende hover kimi effekt gelmir
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,  //bunu elave edende elemanlar yuxaridan asagiyox, soldan saga dogru scroll olur
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 1", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 2", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 3", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 6", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 7", textAlign: TextAlign.center,),
        ),
      ],
    );
 */

/*
 GridView.count(
      crossAxisCount: 3,
      reverse: true,  // tersine yazdirir. en sonuncu elemandan baslayir yazdirmaga
      primary: false,  // eger false olarsa, butun elemanlar ekrana sigirsa, scroll etmir. yeni asagi falan scroll etmek isteyende hover kimi effekt gelmir
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,  //bunu elave edende elemanlar yuxaridan asagiyox, soldan saga dogru scroll olur
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 1", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 2", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 3", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 4", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 5", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 6", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Hello Flutter 7", textAlign: TextAlign.center,),
        ),
      ],
    );
 */
