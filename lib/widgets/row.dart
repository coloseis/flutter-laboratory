import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: Row"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                  'The Row & Column widget does not scroll (and in general it is considered an error to have more children in a Column than will fit in the available room).',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: Text(
                  'If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.',
                  textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text(
                  'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.',
                  textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
