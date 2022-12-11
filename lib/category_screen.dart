import 'package:flutter/material.dart';
import 'package:more_than_one_screen/Models/dummy_data.dart';
import 'package:more_than_one_screen/category_item.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     //  appBar: AppBar(title: Text('Daily Meals'),),
       body: GridView(
           padding: EdgeInsets.all(25),
           children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id,catData.title, catData.color)).toList(),
           gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
             maxCrossAxisExtent: 200,//for the maximum lenth of width of grid
             childAspectRatio: 3/2,//ration of the gril for height and width
             crossAxisSpacing: 20,//horizontal spacing from other item of grid
             mainAxisSpacing: 20,//vertical spacing from other item
           )),
     );
  }
}