import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1= new TextEditingController( text: "0");
  final TextEditingController t2= new TextEditingController( text: "0");

  void doAddition(){
    setState(() {
      num1= int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSubtraction(){
    setState(() {
      num1= int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMul(){
    setState(() {
      num1= int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDiv(){
    setState(() {
      num1= int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
       child: new Column(

         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Text("Output: $sum",
       style: new TextStyle(
         fontSize: 20.0,
         color: Colors.green,
       ),),
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(hintText: "Enter number 1" ),
             controller: t1,

           ),
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(hintText: "Enter number 2" ),
             controller: t2,

           ),
           new Padding(
               padding: const EdgeInsets.only(top: 20.0)),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: <Widget>[
               new MaterialButton(
                 child: new Text("+"),
                 color: Colors.cyanAccent,
                 onPressed: doAddition,
               ),
               new MaterialButton(
                 child: new Text("-"),
                 color: Colors.cyanAccent,
                 onPressed: doSubtraction,
               ),

             ],
           ),
           new Padding(
               padding: const EdgeInsets.only(top : 20.0)),
        new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new MaterialButton(
            child: new Text("*"),
            color: Colors.cyanAccent,
            onPressed: doMul,
          ),new MaterialButton(
            child: new Text("/"),
            color: Colors.cyanAccent,
            onPressed: doDiv,
          ),

        ],
      ),
           new Padding(
               padding: const EdgeInsets.only(top: 20.0)),
           new Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               new MaterialButton(
                 child: new Text("Clear"),
               onPressed: doClear,),
             ],
           ),

         ],
       ),
      ),
    );
  }
}
