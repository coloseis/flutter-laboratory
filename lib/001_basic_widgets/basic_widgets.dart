import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello basic widgets!',
              style: Theme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Go back!',
      //   child: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     //Go back!
      //     //Navigator.pop(context);
      //     Navigator.pushNamed(context, '/');
      //   },
      // ),
    );
  }
}
