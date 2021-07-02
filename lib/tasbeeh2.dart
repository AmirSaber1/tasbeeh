import 'package:flutter/material.dart';

class tasbeeh2 extends StatefulWidget {
  @override
  _tasbeeh2State createState() => _tasbeeh2State();
}

class _tasbeeh2State extends State<tasbeeh2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var imgH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("السبحه الالكترونيه "),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.adjust,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "$_counter",
            style: TextStyle(fontSize: 40),
          ),
          InkWell(
            child: Text(
              "اضـغط هــنا",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            onTap: _incrementCounter,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.refresh,size: 30), onPressed: clearTasbeeh2),
              Text("اجمالى التسبيح : $_counter",style: TextStyle(fontSize: 20,color: Colors.black),)
            ],
          )
        ],
      )
    );
  }

  clearTasbeeh2() {
    setState(() {
      _counter = 0;
    });
  }
}
