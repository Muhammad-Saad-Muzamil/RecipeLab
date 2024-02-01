import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
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
