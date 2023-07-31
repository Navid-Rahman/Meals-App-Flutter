// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    Key? key,
    required this.meal,
    required this.onToggleFavourite,
  }) : super(key: key);

  final Meal meal;
  final void Function(Meal meal) onToggleFavourite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFavourite(meal);
            },
            icon: const Icon(Icons.star),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Ingredients',
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
              'Steps',
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
