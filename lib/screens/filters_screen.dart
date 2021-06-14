import 'package:flutter/material.dart';
import 'package:meals_app_navigation/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filteri'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filter Screen'),
      ),
    );
  }
}
