import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'MealDetails',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:MyHomePage() ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(title: Text('MealDetails'),),
     body: Center(child: Text('Demo app'),),);
  }
}