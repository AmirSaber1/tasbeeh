import 'package:flutter/material.dart';
import 'package:tasbeeh/tasbeeh2.dart';

class tasbeeh extends StatefulWidget {
  @override
  _tasbeehState createState() => _tasbeehState();
}

class _tasbeehState extends State<tasbeeh> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: clearTextField),
          PopupMenuButton<String>(
            onSelected: handleClick,

            itemBuilder: (BuildContext context) {
              return {'Try Another Mode'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
        backgroundColor: Colors.green,
        title: Text("Tasbeeh Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'عـــــدد مرات التسبيح ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text(
              "$_counter",
              style: TextStyle(fontSize: 40),
            ),
            RaisedButton(
              onPressed: _incrementCounter,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }

  clearTextField() {
    setState(() {
      _counter = 0;
    });
  }

  void handleClick(String value) {
    if (value == 'Try Another Mode') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => tasbeeh2()),
      );
    }
  }
}
