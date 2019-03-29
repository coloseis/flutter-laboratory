import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: StatefulWidget"),
      ),
      body: Row(
        children: <Widget>[
          Text('Count: $_counter'),
          RaisedButton(
            onPressed: _increment,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
