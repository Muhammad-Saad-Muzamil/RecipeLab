import 'package:flutter/material.dart';
import 'package:myrecipehub/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:myrecipehub/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:myrecipehub/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:myrecipehub/models/recipe.dart';

class LatestAdditionsSection extends StatelessWidget {
  final List<Recipe> latestAdditions;

  LatestAdditionsSection({required this.latestAdditions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Latest Additions',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        // Use a ListView.builder or other widgets to display latest additions
        // For simplicity, we'll just display recipe titles here
        Column(
          children: latestAdditions.map((recipe) => Text(recipe.title)).toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}


class RecipeOfTheDaySection extends StatelessWidget {
  final List<Recipe> recipes;

  RecipeOfTheDaySection({required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Recipe of the Day',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        // Use a ListView.builder or other widgets to display the recipe of the day
        // For simplicity, we'll just display recipe titles here
        Column(
          children: recipes.map((recipe) => Text(recipe.title)).toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}


class CategoriesSection extends StatelessWidget {
  final List<String> categories;

  CategoriesSection({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Categories',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        // Use a ListView.builder or other widgets to display categories
        // For simplicity, we'll just display category names here
        Column(
          children: categories.map((category) => Text(category)).toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class FeaturedRecipesSection extends StatelessWidget {
  final List<Recipe> featuredRecipes;

  FeaturedRecipesSection({required this.featuredRecipes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Featured Recipes',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        // Use a ListView.builder or other widgets to display featured recipes
        // For simplicity, we'll just display recipe titles here
        Column(
          children:
              featuredRecipes.map((recipe) => Text(recipe.title)).toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

// models/recipe.dart
class Recipe {
  final String id;
  final String title;
  final String category;
  final String imageUrl;

  Recipe({
    required this.id,
    required this.title,
    required this.category,
    required this.imageUrl,
  });
}
