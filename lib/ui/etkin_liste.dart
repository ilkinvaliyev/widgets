import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
  List<Student> allStudents = [];

  @override
  Widget build(BuildContext context) {
    getDataStudent();

    Random random = new Random();

    List<Color> colorNames = [
      Colors.pink,
      Colors.cyan,
      Colors.indigo,
      Colors.black26,
      Colors.deepOrange,
      Colors.teal.shade500
    ];

    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index > 0) {
            return Container(
              height: 1,
              color: Colors.deepPurple,
              margin: EdgeInsets.all(20),
            );
          }
          return Divider(
            indent: 30,
            endIndent: 30,
          );
        },
        itemCount: 20,
        itemBuilder: (context, index) => Card(
            color: allStudents[index]._gender == true
                ? Colors.teal.shade200
                : Colors.redAccent.shade200,
            margin: EdgeInsets.all(10),
            elevation: 4,
            child: ListTile(
              leading: Icon(
                Icons.perm_contact_cal_outlined,
                size: 34,
              ),
              title: Text(allStudents[index]._name),
              subtitle: Text(allStudents[index]._description),
              trailing: Icon(Icons.share),
              onTap: () {
                int number = random.nextInt(colorNames.length - 1);
                showTostMessage(index, colorNames[number]);
                alertShowDialog(context,index);
              },
              onLongPress: () {
                int number = random.nextInt(colorNames.length - 1);
                showTostMessage(index, colorNames[number]);
                alertShowDialog(context);
              },
            ),
        ));
  }

  void getDataStudent() {
    allStudents = List.generate(
        300,
        (index) => Student("Telebe $index adi", "Telebe $index haqqinda ",
            index % 2 == 0 ? true : false));
  }
  void alertShowDialog(BuildContext ctx, [int number]) {

    if(number==null){
      number = 0;
    }

    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Header"),
            content:
              SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("User : ${allStudents[number]._name}"),
                  ],
                ),
              ),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("Okay", style: TextStyle(fontWeight: FontWeight.bold),)
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Close", style: TextStyle(color: Colors.black54))
                  )
                ],
              )
            ],
          );
        });
  }

  void showTostMessage(int index, colorName) {
    Fluttertoast.showToast(
        msg: allStudents[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: colorName,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class Student {
  String _name;
  String _description;
  bool _gender;

  Student(this._name, this._description, this._gender);

  @override
  String toString() {
    // TODO: implement toString
    return "Secilen telebe adi : $_name. Haqqinda : $_description";
  }
}
