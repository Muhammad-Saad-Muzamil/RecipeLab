import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: Center(child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
          Navigator.pop(context);
        },
        child: Text("Go back to the home screen"),
      )),
    );
  }
}
