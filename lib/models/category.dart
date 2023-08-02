// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

/// A class representing a category of meals.
class Category {
  /// Constructs a [Category] instance with the given properties.
  ///
  /// The [id] uniquely identifies the category.
  /// The [title] is the name of the category.
  /// The [color] represents the color associated with the category, defaulting to [Colors.orange].
  Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });

  /// The color associated with the category.
  final Color color;

  /// The unique identifier of the category.
  final String id;

  /// The name of the category.
  final String title;
}
