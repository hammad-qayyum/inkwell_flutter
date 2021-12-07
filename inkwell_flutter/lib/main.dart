import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inkwell in Flutter',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String inkwell='';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Widget'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text(
            '',
            textScaleFactor: 3,
          )
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell='Inkwell Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell='InkWell Long Pressed';
                });
              },
              child: Container(
                  color: Colors.green,
                  width: 120,
                  height: 70,
                  child: Center(
                      child: Text(
                        'Inkwell',
                        textScaleFactor: 2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
            ),
  
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(inkwell,textScaleFactor: 2,),
            )
          ],
        ),
      ),
    );
  }
}
