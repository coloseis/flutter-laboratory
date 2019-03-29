import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: Container"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: const Color(0xFF00FF00),
          width: 48.0,
          height: 48.0,
        ),
      ),
    );
  }
}
