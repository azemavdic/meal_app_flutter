import 'package:flutter/material.dart';
import 'package:meals_app_navigation/models/meal.dart';
import 'package:meals_app_navigation/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Meal> filteredMeals;

  const CategoryMealsScreen({this.filteredMeals});

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> categoryMeals;
  bool _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      categoryMeals = widget.filteredMeals
          .where(
            (cat) => cat.categories.contains(categoryId),
          )
          .toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  // void _removeMeal(String id) {
  //   setState(() {
  //     categoryMeals.removeWhere((meal) => meal.id == id);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
            );
          },
        ),
      ),
    );
  }
}
