import 'package:flutter/material.dart';
import 'package:more_than_one_screen/category_meals_screen.dart';
import './category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealDetails',
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
        '/': (ctx) => CategoryScreen(),
        CategoryMealScreen.routeName :(ctx)=> CategoryMealScreen()
      },
    );
  }
}
/*
*     displayLarge: displayLarge?.merge(other.displayLarge) ?? other.displayLarge,
      displayMedium: displayMedium?.merge(other.displayMedium) ?? other.displayMedium,
      displaySmall: displaySmall?.merge(other.displaySmall) ?? other.displaySmall,
      headlineLarge: headlineLarge?.merge(other.headlineLarge) ?? other.headlineLarge,
      headlineMedium: headlineMedium?.merge(other.headlineMedium) ?? other.headlineMedium,
      headlineSmall: headlineSmall?.merge(other.headlineSmall) ?? other.headlineSmall,
      titleLarge: titleLarge?.merge(other.titleLarge) ?? other.titleLarge,
      titleMedium: titleMedium?.merge(other.titleMedium) ?? other.titleMedium,



      *
      bodySmall: bodySmall?.merge(other.bodySmall) ?? other.bodySmall,
      labelLarge: labelLarge?.merge(other.labelLarge) ?? other.labelLarge,
      labelMedium: labelMedium?.merge(other.labelMedium) ?? other.labelMedium,
      labelSmall: labelSmall?.merge(other.labelSmall) ?? other.labelSmall
* */
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(appBar: AppBar(title: Text('MealDetails'),),
//      body: Center(child: Text('Demo app'),),);
//   }
// }
