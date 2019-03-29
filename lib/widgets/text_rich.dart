import 'package:flutter/material.dart';

class TextRichPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: Text.rich"),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Hello', // default text style
            children: <TextSpan>[
              TextSpan(
                  text: ' beautiful ',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: 'world!!!',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
