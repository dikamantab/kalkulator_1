import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, jum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void penjumlahan() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      jum = num1 + num2;
    });
  }

  void pengurangan() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      jum = num1 - num2;
    });
  }

  void pembagian() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      jum = num1 ~/ num2;
    });
  }

  void perkalian() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      jum = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Kalkulator"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Center(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Hasil Perhitungan : $jum",
                style: new TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Input Pertama") ,
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Input Kedua"),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("x"),
                    color: Colors.blue,
                    onPressed: perkalian,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.blue,
                    onPressed: pembagian,
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.blue,
                    onPressed: penjumlahan,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.blue,
                    onPressed: pengurangan,
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}
