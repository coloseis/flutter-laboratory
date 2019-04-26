import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelCounterModelPage extends StatelessWidget {
  // Initialize the model. Can be done outside a widget, like here.
  final counter = ScopedModelCounter();

  @override
  Widget build(BuildContext context) {
    // Setup a delayed interaction with the model (increment each 5 seconds),
    // outside of the Flutter widget tree.
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) => counter.increment(),
    );

    return ScopedModel<ScopedModelCounter>(
        model: counter,
        child: MyHomePage(),
      );
  }
}

/// Simplest possible model, with just one field.
class ScopedModelCounter extends Model {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            // ScopedModelDescendant looks for an ancestor ScopedModel widget
            // and retrieves its model (ScopedModelCounter, in this case).
            // Then it uses that model to build widgets, and will trigger
            // rebuilds if the model is updated.
            ScopedModelDescendant<ScopedModelCounter>(
              builder: (context, child, counter) => Text(
                    '${counter.value}',
                    style: Theme.of(context).textTheme.display1,
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // ScopedModel.of is another way to access the model object held
        // by an ancestor ScopedModel. By default, it just returns
        // the current model and doesn't automatically trigger rebuilds.
        // Since this button always looks the same, though, no rebuilds
        // are needed.
        onPressed: () => ScopedModel.of<ScopedModelCounter>(context).increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}