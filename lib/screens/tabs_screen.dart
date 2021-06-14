import 'package:flutter/material.dart';
import 'package:meals_app_navigation/screens/favorites_screen.dart';
import 'package:meals_app_navigation/widgets/main_drawer.dart';

import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Kategorije'},
    {'page': FavoritesScreen(), 'title': 'Favoriti'},
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_pages[index]['title']),
      ),
      body: _pages[index]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Kategorije',
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Favoriti',
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
