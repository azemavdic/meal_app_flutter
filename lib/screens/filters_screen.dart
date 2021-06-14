import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filteri'),
      ),
      body: Center(
        child: Text('Filter Screen'),
      ),
    );
  }
}
