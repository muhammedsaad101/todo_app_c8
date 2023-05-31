import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
      ),
    );
  }
}
