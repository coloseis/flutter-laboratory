import 'package:flutter/material.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class LoadStringPage extends StatelessWidget {
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

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}