import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Uma série e um snacks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroaletorio = 0;
  int _numeroaletorio2 = 5;
  List _series = [
    'Stranger Things',
    'Lúcifer',
    'Black Mirror',
    'Game of Thrones',
    'Friends',
    'WandaVision',
    'Vikings',
    'La Casa de Papel',
    'The Big Bang Theory',
    'Lost'
  ];

  List _snacks = [
    'Pipoca',
    'Brigadeiro',
    'Pizza',
    'Torta',
    'Salgadinho de queijo',
    'Hambúrguer',
    'Pastel',
    'Macarronada',
    'Muffin',
    'Sanduíche'
  ];

  void _incrementCounter() {
    setState(() {

      _numeroaletorio = new Random().nextInt(10);
      _numeroaletorio2 = new Random().nextInt(10);
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
            Text(
              'Aperte o botão para gerar uma combinação:',
            ),
            Text(
               'Hoje vou assistir '+_series[_numeroaletorio]+' comendo '+_snacks[_numeroaletorio2],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
