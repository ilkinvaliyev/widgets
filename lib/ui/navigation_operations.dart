import 'package:flutter/material.dart';

class NavigationOperations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Navigation Operations",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Go to A page"),
                    color: Colors.teal.shade200,
                    onPressed: () {
                      Navigator.pushNamed(context, ('/APage'));
                    },
                  ),
                  RaisedButton(
                    child: Text("Go to B page!"),
                    color: Colors.purple.shade200,
                    onPressed: () {
                      Navigator.pushNamed(context, '/BPage');
                    },
                  ),
                  RaisedButton(
                    child: Text("Go to C page and come back"),
                    color: Colors.deepOrange.shade200,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CPage("C Page")
                          )
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text("Go to D page and come back with data", style: TextStyle(color: Colors.white),),
                    color: Colors.redAccent.shade200,
                    onPressed: () {
                      Navigator.push<bool>(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DPage("D Page")
                          )
                      ).then((geriGelenDeyer) => {
                        debugPrint(geriGelenDeyer==true ? "Silindi" : "Silinmedi")
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text("Go to E page"),
                    color: Colors.teal.shade200,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute
                            (builder: (context)=>EPage("E Page")
                          )
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text("Lists Page",style: TextStyle(color: Colors.white),),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, '/list-page');
                    },
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/inputIslemleri');
                    },
                    color: Colors.teal.shade700,
                    child: Text("Go to Form Page", style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )
            ,
          )      ),
    );
  }
}


class ListClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Lists Page",
            style: TextStyle(color: Colors.white,fontSize: 26),
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index){
            return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/listDetail/$index');
                },
               child : Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(8.0),
                  height: 50,
                  color: Colors.teal.shade100,
                  child : Center(
                    child: Text("List Element ${++index}", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ),
            );
          },
          itemCount: 60,
        )
    );
  }
}

class ListDetail extends StatelessWidget {
  int index;
  ListDetail(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "List Detail Page",
            style: TextStyle(color: Colors.white,fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("List Detail Page : $index"),
          ),
        )
    );
  }
}

class FPage extends StatelessWidget {

  String comingHeaderData;

  FPage(this.comingHeaderData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            comingHeaderData,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome to F page", style: TextStyle(fontSize: 24,color: Colors.red),)
            ],
          ),
        )
    );
  }
}

class EPage extends StatelessWidget {

  String comingHeaderData;

  EPage(this.comingHeaderData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            comingHeaderData,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome to E page", style: TextStyle(fontSize: 24,color: Colors.red),),
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context,'/FPage');
                },
                color: Colors.redAccent,
                child: Text("F Page",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        )
    );
  }
}

class APage extends StatelessWidget {

  String comingHeaderData;

  APage(this.comingHeaderData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            comingHeaderData,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome to A page", style: TextStyle(fontSize: 24,color: Colors.red),)
            ],
          ),
        )
    );
  }
}

class BPage extends StatelessWidget {

  String comingHeaderData;

  BPage(this.comingHeaderData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            comingHeaderData,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome to B page", style: TextStyle(fontSize: 24,color: Colors.red),)
            ],
          ),
        )
    );
  }
}

class CPage extends StatelessWidget {

  String comingHeaderData;
  CPage(this.comingHeaderData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            comingHeaderData,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome to C page", style: TextStyle(fontSize: 24,color: Colors.red),),
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Go back"),
                color: Colors.deepOrange,
              ),
            ],
          ),
        )
    );
  }
}

class DPage extends StatelessWidget {

  String comingHeaderData;
  DPage(this.comingHeaderData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            comingHeaderData,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome to $comingHeaderData", style: TextStyle(fontSize: 24,color: Colors.red),),
              RaisedButton(
                onPressed: (){
                  Navigator.pop<bool>(context,true);
                },
                child: Text("Go back"),
                color: Colors.deepOrange,
              ),
            ],
          ),
        )
    );
  }
}
