import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  final String id;
  final String title;
  CategoryMealScreen(this.title, this.id);

  @override
  Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(title: Text(title),),
    body: Center(child: Text('Meals details screens here'),),);
  }
}