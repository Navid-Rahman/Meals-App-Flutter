enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

/// A class representing a meal.
class Meal {
  /// Constructs a [Meal] instance with the given properties.
  ///
  /// The [id] uniquely identifies the meal.
  /// The [categories] is a list of category IDs to which the meal belongs.
  /// The [title] is the name of the meal.
  /// The [imageUrl] is the URL to the image representing the meal.
  /// The [ingredients] is a list of ingredients used in the meal.
  /// The [steps] is a list of instructions to prepare the meal.
  /// The [duration] represents the cooking time of the meal in minutes.
  /// The [complexity] represents the complexity level of the meal.
  /// The [affordability] represents the affordability level of the meal.
  /// The [isGlutenFree] indicates if the meal is gluten-free.
  /// The [isLactoseFree] indicates if the meal is lactose-free.
  /// The [isVegan] indicates if the meal is suitable for vegans.
  /// The [isVegetarian] indicates if the meal is suitable for vegetarians.
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  /// The unique identifier of the meal.
  final String id;

  /// A list of category IDs to which the meal belongs.
  final List<String> categories;

  /// The name of the meal.
  final String title;

  /// The URL to the image representing the meal.
  final String imageUrl;

  /// A list of ingredients used in the meal.
  final List<String> ingredients;

  /// A list of instructions to prepare the meal.
  final List<String> steps;

  /// The cooking time of the meal in minutes.
  final int duration;

  /// The complexity level of the meal.
  final Complexity complexity;

  /// The affordability level of the meal.
  final Affordability affordability;

  /// Indicates if the meal is gluten-free.
  final bool isGlutenFree;

  /// Indicates if the meal is lactose-free.
  final bool isLactoseFree;

  /// Indicates if the meal is suitable for vegans.
  final bool isVegan;

  /// Indicates if the meal is suitable for vegetarians.
  final bool isVegetarian;

  /// A static property representing a number ID to be used as a constant value.
  static const int numberID = 1000;
}
