import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  List<int> listNumbers = List.generate(50, (number) => number);
  List<String> listAltName = List.generate(50, (index) => "List User alt name: $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listNumbers
          .map(
            (e) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal.shade200,
                    margin: EdgeInsets.all(20),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.android),
                        radius: 12,
                      ),
                      title: Text("User Basliq : $e"),
                      subtitle: Text(listAltName[e]),
                      trailing: Icon(Icons.add_circle),
                    ),
                  ),
                ),
                Divider(
                    color: Colors.deepOrangeAccent,
                    height: 0,
                    indent: 20,
                    endIndent: 20),
              ],
            ),
          )
          .toList(),
    );
  }
}
