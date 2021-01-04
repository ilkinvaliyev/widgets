import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormIsleri extends StatefulWidget{

  @override
  _FormIsleriState createState() => _FormIsleriState();
}

class _FormIsleriState extends State<FormIsleri> {

  String inputData;
  FocusNode _fNode ;
  int maxLine = 1;
  Icon inputIcon = Icon(Icons.done);

  TextEditingController textController1;

  @override
  void initState() {
    super.initState();
    _fNode = FocusNode();
    textController1 = TextEditingController(text: "Default yazi");

    _fNode.addListener(() {
      setState(() {
        if(_fNode.hasFocus){
          maxLine = 3;
          inputIcon = Icon(Icons.edit);
        }else{
          maxLine = 1;
          inputIcon = Icon(Icons.done);
        }
      });

    });
  }

  @override
  void dispose() {
    _fNode.dispose();
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Form Isleri"),
      ),

      floatingActionButton:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
               width: 24,
               height: 24,
               child: FloatingActionButton(
                onPressed: (){
                },
                child: Icon(
                    Icons.house_rounded,
                  size: 16
                ),
                backgroundColor: Colors.green.shade700,
                mini: true,
              ),
            ),

            SizedBox(height: 10,),  // araliga bosluq atir 10 px
            FloatingActionButton(
              onPressed: (){
                FocusScope.of(context).requestFocus(_fNode);
              },
              child: Icon(
                  Icons.edit
              ),
              mini: true,
              backgroundColor: Colors.pink,
            ),

            SizedBox(height: 10,),  // araliga bosluq atir 10 px
            FloatingActionButton(
              onPressed: (){
                textController1.text = "Floatingden geldi";
                FocusScope.of(context).requestFocus(_fNode);
              },
              child: Icon(
                  Icons.done_outline_sharp
              ),
            ),
          ],
        ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              focusNode: _fNode,
              controller: textController1,
              keyboardType: TextInputType.number,  //textin ancaq reqem ile yazilacagini bildirir
              textInputAction: TextInputAction.done,  //keyboardda olan ok duymesini bildirir
              textAlign: TextAlign.center,  //yazinin hardan baslanacagi
              autofocus: false,
              autocorrect: true,  //avtomatik sozlerin duzeldilmesi ucun. default olaraq da true gelir
              maxLines: maxLine,  //max hundurluk
              maxLength: 10,  //umumi nece xarakter yazila bileceyini gosterir
              maxLengthEnforced: true,
              cursorColor: Colors.pink,
              cursorWidth: 1,
              decoration: InputDecoration(
                hintText: "Nomrenizi elave edin",    //placeholder rolunu oynayir
                labelText: "Nomre",
                labelStyle: TextStyle(
                  color: Colors.teal.shade900,
                  fontWeight: FontWeight.bold
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),  //border rengini deyisir
                icon: Icon(Icons.edit),// sol terefe icon elave edir
                prefix: Icon(Icons.done), // inputun icinde sol terefe icon
                suffixIcon: inputIcon,  //inputun icinde sag terefe icon
                filled: true, // icerisinin background rengini deyismek ucun true olmalidi
                fillColor: Colors.red[50] //backgroud rengi. filled:true olmalidi
              ),
              onChanged: (String e){
              },
              onSubmitted: (e){
                setState(() {
                  inputData = e;
                });
              },
            ),
          ) ,
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textController1,
              keyboardType: TextInputType.text,  //textin ancaq reqem ile yazilacagini bildirir
              textInputAction: TextInputAction.done,  //keyboardda olan ok duymesini bildirir
              textAlign: TextAlign.center,  //yazinin hardan baslanacagi
              autofocus: false,
              autocorrect: true,  //avtomatik sozlerin duzeldilmesi ucun. default olaraq da true gelir
             // maxLines: 3,  //max hundurluk
              maxLength: 10,  //umumi nece xarakter yazila bileceyini gosterir
              maxLengthEnforced: true,
              cursorColor: Colors.pink,
              cursorWidth: 1,
              decoration: InputDecoration(
                hintText: "Password",    //placeholder rolunu oynayir
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.teal.shade900,
                  fontWeight: FontWeight.bold
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),  //border rengini deyisir
                icon: Icon(Icons.edit),// sol terefe icon elave edir
                prefix: Icon(Icons.done), // inputun icinde sol terefe icon
                suffixIcon: Icon(Icons.download_rounded),  //inputun icinde sag terefe icon
                filled: true, // icerisinin background rengini deyismek ucun true olmalidi
                fillColor: Colors.red[50] //backgroud rengi. filled:true olmalidi
              ),
              onChanged: (String e){
              },
              onSubmitted: (e){
                setState(() {
                  inputData = e;
                });
              },
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            color: Colors.cyan,
            child: Align(
                alignment: Alignment.center,
                child:
                Text("${inputData!=null ? inputData : "Hello Flutter"}")
            ),
          )
        ],
      ),
    );
  }
}