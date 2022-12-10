import 'package:flutter/material.dart';
import 'package:more_than_one_screen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id,this.title, this.color);

  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return CategoryMealScreen(title,id);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontFamily: 'RoboCondensed',fontWeight: FontWeight.w800,fontSize: 20,),
            textAlign: TextAlign.center,),
        ),
        decoration: BoxDecoration(
            gradient:LinearGradient(colors: [color.withOpacity(.3),color,],
            begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
          ),
      ),
    );
  }
}