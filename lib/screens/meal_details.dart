import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/models/meal.dart';
import 'package:meals_app/provider/favourites_provider.dart';

// Screen to display details of a specific meal.
class MealDetailsScreen extends ConsumerWidget {
  const MealDetailsScreen({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the list of favorite meals from the favouriteMealsProvider using Flutter Riverpod's ref.watch().
    final favoriteMeals = ref.watch(favouriteMealsProvider);

    // Check if the current meal is in the list of favorite meals to determine whether it is a favorite or not.
    final isFavorite = favoriteMeals.contains(meal);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title), // Display the meal title in the app bar.
        actions: [
          // IconButton to toggle the favorite status of the meal.
          IconButton(
            onPressed: () {
              // Toggle the meal's favorite status using the favouriteMealsProvider's notifier.
              final wasAdded = ref
                  .read(favouriteMealsProvider.notifier)
                  .toggleMealFavouriteStatus(meal);

              // Show a snackbar indicating whether the meal was added or removed from favorites.
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      wasAdded ? 'Meal added as a favourite' : 'Meal removed'),
                ),
              );
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                // Animate the star icon with a rotation transition when the favorite status changes.
                return RotationTransition(
                  turns: Tween<double>(
                    begin: 0.5,
                    end: 0.6,
                  ).animate(animation),
                  child: child,
                );
              },
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                key: ValueKey(
                    isFavorite), // Use ValueKey to help Flutter animate the switch.
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: meal
                  .id, // Use a unique tag for the Hero animation to match with the MealItem widget.
              child: Image.network(
                meal.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Ingredients', // Section title for the meal ingredients.
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: meal.ingredients.map((ingredient) {
                  // Display each ingredient as a Text widget.
                  return Column(
                    children: [
                      Text(
                        ingredient,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Steps', // Section title for the meal preparation steps.
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: meal.steps.map((step) {
                  // Display each preparation step as a Text widget.
                  return Column(
                    children: [
                      Text(
                        step,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
