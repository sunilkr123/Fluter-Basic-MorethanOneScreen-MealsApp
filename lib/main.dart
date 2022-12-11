import 'package:flutter/material.dart';
import 'package:more_than_one_screen/category_meals_screen.dart';
import 'package:more_than_one_screen/screens/meal_details.dart';
import './screens/tab_screens.dart';
import './category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'MealDetails',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
      //    canvasColor: Color.fromARGB(255, 254, 229, 1),
          fontFamily: 'Raleway',
          // textTheme: ThemeData.light().textTheme.copyWith(
          //     bodyText1: TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
          //     bodyText2: TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
          //     titleMedium: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     labelSmall: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     labelMedium: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     labelLarge: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     bodySmall: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     bodyMedium: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     bodyLarge: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     titleSmall: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     displayLarge: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     displayMedium: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     displaySmall: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     headlineLarge: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     headlineMedium: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     headlineSmall: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     titleLarge: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
          //     )
      ),
      // home: CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabBarScreen(),//CategoryScreen(),
        CategoryMealScreen.routeName :(ctx)=> CategoryMealScreen(),
       MealDetails.routeNamed: (ctx) => MealDetails()
      },
       //this can be used when the pushed screen rout is not found
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(builder: (ctx) => CategoryScreen(),);
      // },
      //this can be used when the pushed screen rout is not found
     //  onUnknownRoute: (settings) {
     //   return MaterialPageRoute(builder: (ctx) => CategoryScreen(),);
     // },
    );
  }
}
