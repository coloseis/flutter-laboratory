import 'package:flutter/material.dart';
import 'widgets/text.dart';
import 'widgets/text_rich.dart';
import 'widgets/container.dart';
import 'widgets/stack.dart';
import 'widgets/row.dart';
import 'widgets/column.dart';
import 'widgets/basic_widgets.dart';
import 'widgets/buttons.dart';

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
        '/text': (context) => TextPage(),
        '/textRich': (context) => TextRichPage(),
        '/container': (context) => ContainerPage(),
        '/stack': (context) => StackPage(),
        '/row': (context) => RowPage(),
        '/column': (context) => ColumnPage(),
        '/basicWidgets': (context) => MyScaffold(),
        '/buttons': (context) => ButtonsPage(),
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
              'Basic Widgets',
              style: Theme.of(context).textTheme.title,
            ),
            RaisedButton(
              child: Text('RaisedButton disabled'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Text'),
              onPressed: () {
                Navigator.pushNamed(context, '/text');
              },
            ),
            RaisedButton(
              child: Text('Text.rich'),
              onPressed: () {
                Navigator.pushNamed(context, '/textRich');
              },
            ),
            RaisedButton(
              child: Text('Container'),
              onPressed: () {
                Navigator.pushNamed(context, '/container');
              },
            ),
            RaisedButton(
              child: Text('Stack'),
              onPressed: () {
                Navigator.pushNamed(context, '/stack');
              },
            ),
            RaisedButton(
              child: Text('Row'),
              onPressed: () {
                Navigator.pushNamed(context, '/row');
              },
            ),
            RaisedButton(
              child: Text('Column'),
              onPressed: () {
                Navigator.pushNamed(context, '/column');
              },
            ),
            RaisedButton(
              child: Text('Example'),
              onPressed: () {
                Navigator.pushNamed(context, '/basicWidgets');
              },
            ),
            RaisedButton(
              child: Text('Buttons'),
              onPressed: () {
                Navigator.pushNamed(context, '/buttons');
              },
            ),
          ],
        ),
      ),
    );
  }
}
