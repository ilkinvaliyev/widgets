import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // textTheme:  TextTheme(
        //   display1: TextStyle(fontSize: 22)
        // ),
        primarySwatch: Colors.deepPurple,
      ),
      title: "Widgets for Pc",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title : "Widget Title for PC"),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;
  int count = 0;

  MyHomePage({this.title}){
    debugPrint("MyHome Page Stateful widget constructor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHome Page create state clicked");
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHome Build method clicked");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
          label: Text("Like")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                _artir();
              },
              child: Text("Artir"),
              color: Colors.green,
            ),
            Text(
                "${widget.count}",
                style: Theme.of(context).textTheme.display1.copyWith(
                    color: widget.count > 0 ? Colors.deepOrange : Colors.black26
                )
            ),
            RaisedButton(onPressed: (){
              _azalt();
            },
              child: Text("Azalt"),color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

  void _artir(){
    setState(() {
      widget.count++;
    });
  }
  void _azalt(){
    setState(() {
      widget.count > 0 ? widget.count-- : false;
    });
  }

}


