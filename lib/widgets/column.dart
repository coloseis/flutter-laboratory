import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic widgets: Column"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('We move under cover and we move as one'),
            Text('Through the night, we have one shot to live another day'),
            Text('We cannot let a stray gunshot give us away'),
            Text('We will fight up close, seize the moment and stay in it'),
            Text('It’s either that or meet the business end of a bayonet'),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            Text('Rochambeau!',
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0)),
            Text(
                'To cause a child to expand to fill the available vertical space, wrap the child in an Expanded widget.',
                style: Theme.of(context).textTheme.display1),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
