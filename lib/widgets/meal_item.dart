import 'package:flutter/material.dart';
import 'package:more_than_one_screen/Models/meals.dart';
import 'package:more_than_one_screen/screens/meal_details.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(this.id ,this.title, this.imageUrl, this.duration, this.complexity, this.affordability);

  String get complexityText  {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
     case Complexity.Hard:
       return 'Hard';
       break;
       default:
         return 'Unknown';
         break;
  }
}

String get affordableText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'Unknown';
        break;
    }
}

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealDetails.routeNamed,arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => selectMeal(context),
      child: Card (
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children : [
                ClipRRect(
                borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
                Positioned(
                bottom: 20,
                right: 0,
                child: Container(
                  width: 220,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(title, style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,),
                ),
              )
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 4,),
                       Text('$duration min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 4,),
                      Text(complexityText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 4,),
                      Text(affordableText)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}