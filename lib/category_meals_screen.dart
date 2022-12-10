import 'package:flutter/material.dart';
import 'package:more_than_one_screen/widgets/meal_item.dart';
import './Models/dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  // final String id;
  // final String title;
  // CategoryMealScreen(this.title, this.id);
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routesArgs = ModalRoute
        .of(context)
        ?.settings
        .arguments as Map<String, String>;
    var title = routesArgs['title'] as String;
    var id = routesArgs['id'];

    final categoryModels = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(id);
    }).toList();

    return Scaffold(appBar: AppBar(title: Text(title),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(itemBuilder: (ctx, index) {
         return MealItem(
             categoryModels[index].id,
             categoryModels[index].title,
             categoryModels[index].imageUrl,
             categoryModels[index].duration,
             categoryModels[index].complexity,
             categoryModels[index].affordability);
        },
          itemCount: categoryModels.length,),
      ),);
  }
}