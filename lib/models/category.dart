// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Category {
  Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });

  final Color color;
  final String id;
  final String title;
}
