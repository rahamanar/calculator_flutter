import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  FocusNode inputOne = FocusNode();
  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = "";
      t2.text = "";
      sum = 0;
      onchangefocus1();
    });
  }

  void onchangefocus1() {
    FocusScope.of(context).requestFocus(inputOne);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            new TextField(
              focusNode: inputOne,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.all(20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.greenAccent,
                    child: new Text("+"),
                    onPressed: doAdd),
                new RaisedButton(
                    color: Colors.greenAccent,
                    child: new Text("-"),
                    onPressed: doSub),
              ],
            ),
            new Padding(padding: const EdgeInsets.all(5)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.greenAccent,
                    child: new Text("*"),
                    onPressed: doMul),
                new RaisedButton(
                    color: Colors.greenAccent,
                    child: new Text("/"),
                    onPressed: doDiv),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    autofocus: true,
                    color: Colors.greenAccent,
                    child: new Text("Clear"),
                    onPressed: doClear),
              ],
            )
          ],
        ),
      ),
    );
  }
}
