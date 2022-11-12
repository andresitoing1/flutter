import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';
import 'gradient.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String Lorem =
      "El mejor país del mundo, aqui podras seleccionar tus lugares favoritos y ver los detalles";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi País',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          //body: new Description_place("Colombia",4,Lorem),
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Description_place("Colombia", 4, Lorem),
                  ReviewList()
                ],
              ),
              HeaderAppBar()
            ],
          ),
        ) //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
