import 'package:flutter/material.dart';
import 'package:myrecipehub/models/recipe.dart';
import 'package:myrecipehub/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Placeholder data for featured recipes, categories, and latest additions
  final List<Recipe> featuredRecipes = [
    // ... (as before)
  ];

  final List<String> categories = ['Breakfast', 'Lunch', 'Dinner', 'Desserts'];

  final List<Recipe> latestAdditions = [
    // ... (as before)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Recipe App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeaturedRecipesSection(featuredRecipes: featuredRecipes),
            CategoriesSection(categories: categories),
            RecipeOfTheDaySection(recipes: featuredRecipes),
            LatestAdditionsSection(latestAdditions: latestAdditions),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation bar tap
        },
      ),
    );
  }
}
