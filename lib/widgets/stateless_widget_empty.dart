import 'package:flutter/material.dart';

class StatelessWidgetEmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: Empty"),
      ),
      body: Center(
        child: null,
      ),
    );
  }
}
