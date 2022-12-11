import 'package:flutter/material.dart';
import 'package:more_than_one_screen/Models/dummy_data.dart';

class MealDetails extends StatelessWidget {
  static const routeNamed = '/meal-details';

  Widget buildSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoCondensed', fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute
        .of(context)
        ?.settings
        .arguments as String;
  final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);

    return Scaffold(appBar: AppBar(title: Text(selectedMeal.title),),
    body:  SingleChildScrollView(
      child: Column(
      children: [
        Container(
      height: 250,
      width: double.infinity,
      child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover,),
      ),
        buildSectionTitle(context, 'Ingradients'),
        Container(
         // height:  300,
          width:  double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: ListView.builder(itemBuilder: (ctx, index) {
            return Card(
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(selectedMeal.ingredients[index]),
              ),
            );
          },
          itemCount: selectedMeal.ingredients.length,
          physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
        ),
        buildSectionTitle(context, 'Steps'),
        Container(
         // height:  300,
          width:   double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(10),
          child: ListView.builder(itemBuilder: (ctx, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text('#${index+1}') ,
              ),
              title: Text(selectedMeal.steps[index]),
            );
          },
            itemCount: selectedMeal.steps.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,),
        ),
      ],
      ),
    ));
  }
}
