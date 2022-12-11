import 'package:flutter/material.dart';
import 'package:more_than_one_screen/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('Cooking up!',
              style:TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoDensed',
                  fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.restaurant, size: 30,),
            title: Text('Meals', style:
            TextStyle(
                fontFamily: 'Robotodensed',
                fontSize: 20,
                fontWeight: FontWeight.normal
             ),
            ),
          onTap: (){
             Navigator.of(context).pushReplacementNamed('/');//pushNamed('/');
          },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 30,),
            title: Text('Filters', style:
            TextStyle(
                fontFamily: 'Robotodensed',
                fontSize: 20,
                fontWeight: FontWeight.normal
            ),
            ),
            onTap: (){
              Navigator.of(context).pushNamed(FilterScreen.routeNamed);
            },
          ),
        ],
      ),
    );
  }
}
