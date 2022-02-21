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
          padding: const EdgeInsets.all(40.60),
          child: new Center(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "Hasil Perhitungan : $jum",
                style: new TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: "Input Pertama",
                    fillColor: Color.fromARGB(255, 171, 182, 221),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6))),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Input Kedua",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    height: 50,
                    minWidth: 100,
                    child: new Text("x"),
                    color: Colors.blue.shade200,
                    onPressed: perkalian,
                    splashColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  new MaterialButton(
                    height: 50,
                    minWidth: 100,
                    child: new Text("/"),
                    color: Colors.blue.shade200,
                    onPressed: pembagian,
                    splashColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    height: 50,
                    minWidth: 100,
                    child: new Text("+"),
                    color: Colors.blue.shade200,
                    onPressed: penjumlahan,
                    splashColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  new MaterialButton(
                    height: 50,
                    minWidth: 100,
                    child: new Text("-"),
                    color: Colors.blue.shade200,
                    onPressed: pengurangan,
                    splashColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}
