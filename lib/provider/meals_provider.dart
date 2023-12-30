import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';

/// Provider for the list of meals.
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
