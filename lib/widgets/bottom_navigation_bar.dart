import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  CustomAppBar({required this.title, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
      actions: actions,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.orange,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category, color: Colors.orange),
          label: "Categories",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.new_releases, color: Colors.orange),
          label: 'Latest Additions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.today, color: Colors.orange),
          label: "Recipe of the Day",
        ),
      ],
    );
  }
}
