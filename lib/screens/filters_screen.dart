import 'package:flutter/material.dart';
import 'package:meals_app_navigation/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
      {String title, String subtitle, bool newValue, Function updateValue}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: newValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filteri'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Filteri hrane',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                    title: 'Bez glutena',
                    subtitle: 'Ostavi samo bezglutensku hranu',
                    newValue: _glutenFree,
                    updateValue: (bool value) {
                      setState(() {
                        _glutenFree = value;
                      });
                    }),
                _buildSwitchListTile(
                    title: 'Vegetarijanska',
                    subtitle: 'Ostavi samo vegetarijansku hranu',
                    newValue: _vegetarian,
                    updateValue: (bool value) {
                      setState(() {
                        _vegetarian = value;
                      });
                    }),
                _buildSwitchListTile(
                    title: 'Veganska',
                    subtitle: 'Ostavi samo vegansku hranu',
                    newValue: _vegan,
                    updateValue: (bool value) {
                      setState(() {
                        _vegan = value;
                      });
                    }),
                _buildSwitchListTile(
                    title: 'Bez laktoze',
                    subtitle: 'Ostavi samo hranu bez laktoze',
                    newValue: _lactoseFree,
                    updateValue: (bool value) {
                      setState(() {
                        _lactoseFree = value;
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
