import 'package:flutter/material.dart';
import '001_basic_widgets/basic_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Laboratory',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the MyHomePage Widget
        '/': (context) => MyHomePage(),
        // When we navigate to the "/basicWidgets" route, build the BasicWidgets Widget
        '/basicWidgets': (context) => BasicWidgets(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter laboratory!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello world!',
              style: Theme.of(context).textTheme.title,
            ),
            RaisedButton(
              child: Text('Basic widgets'),
              onPressed: () {
                Navigator.pushNamed(context, '/basicWidgets');
              },
            ),
          ],
        ),
      ),
    );
  }
}
