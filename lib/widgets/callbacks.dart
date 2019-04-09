import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

class Callbacks extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Callbacks> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: Callbacks"),
      ),
      body: Center(
        child: Row(children: <Widget>[
          Expanded(
              child: Text(
                  'Notice how we created two new stateless widgets, cleanly separating the concerns of displaying the counter (CounterDisplay) and changing the counter (CounterIncrementor).')),
          Expanded(
            child: Text(
                'the separation of responsibility allows greater complexity to be encapsulated in the individual widgets, while maintaining simplicity in the parent.'),
          ),
          CounterIncrementor(onPressed: _increment),
          CounterDisplay(count: _counter),
        ]),
      ),
    );
  }
}
