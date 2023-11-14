import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DEV1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override 
  _MyHomePageState createState() =>
_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
   
  void _increamnetCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('DEV1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('You have clicked the button many times.'),
          Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(
          onPressed: _increamnetCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
    );
  }
}