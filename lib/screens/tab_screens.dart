import 'package:flutter/material.dart';
import 'package:more_than_one_screen/category_screen.dart';
import 'package:more_than_one_screen/screens/favourite_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {

  final List<Map<String, Object>> _pages = [
    {
      'page': CategoryScreen(),
      'title': 'Categories',
    },
    {
      'page': FavouriteScreen(),
      'title': 'Your Favorite',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab App Demo'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: 'Favourite',
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            CategoryScreen(),
            FavouriteScreen()
          ]),
        ));
  }
}
