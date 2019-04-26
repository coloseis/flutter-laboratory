import 'package:flutter/material.dart';
import 'widgets/text.dart';
import 'widgets/text_rich.dart';
import 'widgets/container.dart';
import 'widgets/stack.dart';
import 'widgets/row.dart';
import 'widgets/column.dart';
import 'widgets/basic_widgets.dart';
import 'widgets/buttons.dart';
import 'widgets/stateful_widget_empty.dart';
import 'widgets/callbacks.dart';
import 'widgets/shoppingList.dart';
import 'layouts/layout_tutorial.dart';
import 'state/own.dart';
import 'state/parent.dart';
import 'state/mixed.dart';
import 'navigation/todo_list.dart';
import 'navigation/return_data.dart';
import 'navigation/hero_animation.dart';
import 'gestures/pointer.dart';
import 'model/stateCounter.dart';
import 'model/shopper.dart';

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
        '/statefulWidgetEmpty': (context) => Counter(),
        '/callbacks': (context) => Callbacks(),
        '/shoppingList': (context) => ShoppingList(
              products: <Product>[
                Product(name: 'Eggs'),
                Product(name: 'Flour'),
                Product(name: 'Chocolate chips'),
              ],
            ),
        '/layoutTutorial': (context) => LayoutTutorialPage(),
        '/stateOwn': (context) => OwnStatePage(),
        '/stateParent': (context) => ParentWidgetStatePage(),
        '/stateMixed': (context) => MixedStatePage(),
        '/todoList': (context) => TodoListPage(),
        '/returnData': (context) => ReturnDataPage(),
        '/hero': (context) => HeroPage(),
        '/pointer': (context) => PointerPage(),
        '/stateCounter': (context) => ScopedModelCounterModelPage(),
        '/shopper': (context) => ShopperPage(),
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
      body: ListView(
        children: <Widget>[
          Text(
            'Basic Widgets',
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text('RaisedButton disabled'),
            onTap: null,
          ),
          ListTile(
            title: Text('Text'),
            onTap: () {
              Navigator.pushNamed(context, '/text');
            },
          ),
          ListTile(
            title: Text('Text.rich'),
            onTap: () {
              Navigator.pushNamed(context, '/textRich');
            },
          ),
          ListTile(
            title: Text('Container'),
            onTap: () {
              Navigator.pushNamed(context, '/container');
            },
          ),
          ListTile(
            title: Text('Stack'),
            onTap: () {
              Navigator.pushNamed(context, '/stack');
            },
          ),
          ListTile(
            title: Text('Row'),
            onTap: () {
              Navigator.pushNamed(context, '/row');
            },
          ),
          ListTile(
            title: Text('Column'),
            onTap: () {
              Navigator.pushNamed(context, '/column');
            },
          ),
          ListTile(
            title: Text('Example'),
            onTap: () {
              Navigator.pushNamed(context, '/basicWidgets');
            },
          ),
          ListTile(
            title: Text('Buttons'),
            onTap: () {
              Navigator.pushNamed(context, '/buttons');
            },
          ),
          ListTile(
            title: Text('Stateful Widget'),
            onTap: () {
              Navigator.pushNamed(context, '/statefulWidgetEmpty');
            },
          ),
          ListTile(
            title: Text('Callbacks'),
            onTap: () {
              Navigator.pushNamed(context, '/callbacks');
            },
          ),
          ListTile(
            title: Text('Shopping List'),
            onTap: () {
              Navigator.pushNamed(context, '/shoppingList');
            },
          ),
          Text(
            'Layouts',
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          ListTile(
              leading: const Icon(Icons.flight_land),
              trailing: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: const Text('Trix\'s ListTile'),
              subtitle: 1 != 2
                  ? const Text('subtitle: The airplane is only in Act II.')
                  : null,
              enabled: 2 == 2,
              onTap: () {/* react to the tile being tapped */}),
          ListTile(
            title: Text('Layout Tutorial'),
            onTap: () {
              Navigator.pushNamed(context, '/layoutTutorial');
            },
          ),
          Text(
            'State',
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text('Widget manages own state'),
            onTap: () {
              Navigator.pushNamed(context, '/stateOwn');
            },
          ),
          ListTile(
            title: Text('Parent widget manages widget’s state'),
            onTap: () {
              Navigator.pushNamed(context, '/stateParent');
            },
          ),
          ListTile(
            title: Text('mix-and-match approach'),
            onTap: () {
              Navigator.pushNamed(context, '/stateMixed');
            },
          ),
          Text(
            'Navigation',
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text('Navigate Todo List Detail'),
            onTap: () {
              Navigator.pushNamed(context, '/todoList');
            },
          ),
          ListTile(
            title: Text('Return Data'),
            onTap: () {
              Navigator.pushNamed(context, '/returnData');
            },
          ),
          ListTile(
            title: Text('Hero Animation'),
            onTap: () {
              Navigator.pushNamed(context, '/hero');
            },
          ),
          Text(
            'Gestures',
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text('Pointer'),
            onTap: () {
              Navigator.pushNamed(context, '/pointer');
            },
          ),
          Text(
            'Model / State',
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text('Counter'),
            onTap: () {
              Navigator.pushNamed(context, '/stateCounter');
            },
          ),
          ListTile(
            title: Text('Shopping Cart'),
            onTap: () {
              Navigator.pushNamed(context, '/shopper');
            },
          ),
        ],
      ),
    );
  }
}
