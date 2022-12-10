import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  // final String id;
  // final String title;
  // CategoryMealScreen(this.title, this.id);
    static const  routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {

    final routesArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    var title = routesArgs['title'] as String;
    var id = routesArgs['id'];

     return Scaffold(appBar: AppBar(title: Text(title),),
    body: Center(child: Text('Meals details screens here'),),);
  }
}