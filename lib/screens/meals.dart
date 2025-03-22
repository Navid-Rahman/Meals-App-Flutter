import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meal_details.dart';
import 'package:meals_app/widgets/meal_item.dart';

// Screen to display a list of meals for a specific category.
class MealsScreen extends StatelessWidget {
  const MealsScreen({
    Key? key,
    required this.meals,
    this.title,
    required void Function(Meal meal) onToggleFavorite,
  }) : super(key: key);

  final List<Meal> meals;
  final String? title;

  // Function to handle meal selection and navigate to the MealDetailsScreen.
  void selectMeal(Meal meal, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MealDetailsScreen(
        meal: meal,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // Widget to display when there are no meals available.
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!', // Display message for empty meals list.
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Try selecting a different category!', // Suggest selecting a different category.
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ],
      ),
    );

    // If there are meals available, display them in a ListView using MealItem widget.
    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemBuilder: (context, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (Meal meal) {
            selectMeal(meal, context); // Handle meal selection.
          },
        ),
        itemCount: meals.length,
      );
    }

    // If no title is provided, return the content widget directly.
    if (title == null) {
      return content;
    }

    // If a title is provided, display the meals in a Scaffold with an AppBar.
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
