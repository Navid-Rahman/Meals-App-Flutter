import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

// The screen that displays the list of categories and allows users to select a category to view meals.
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({
    Key? key,
    required this.onToggleFavorite,
    required this.availableMeals,
  }) : super(key: key);

  final List<Meal> availableMeals;
  final void Function(Meal meal) onToggleFavorite;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // Initialize the animation controller for slide-in animation.
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    _animationController.forward(); // Start the slide-in animation.
  }

  @override
  void dispose() {
    // Dispose of the animation controller to avoid memory leaks.
    _animationController.dispose();
    super.dispose();
  }

  // Function to handle category selection and navigate to the corresponding MealsScreen.
  void _selectCategory(BuildContext context, Category category) {
    // Filter meals based on the selected category ID.
    final filteredMeals = widget.availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    // Navigate to the MealsScreen with the filtered meals for the selected category.
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
          onToggleFavorite: widget.onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // Use CategoryGridItem widget for each category in availableCategories.
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(
                    context, category); // Handle category selection.
              },
            ),
        ],
      ),
      // Apply slide-in animation to the GridView when the animation controller changes.
      builder: (context, child) => SlideTransition(
        position: Tween(
          begin: const Offset(0, 0.3), // Slide from bottom.
          end: const Offset(0, 0), // Slide to its final position.
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        ),
        child: child,
      ),
    );
  }
}
