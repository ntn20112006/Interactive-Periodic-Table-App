import 'package:flutter/material.dart';
import 'package:interactive_periodic_table_app/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Interactive Period Table App',
      home: HomePage()
    );
  }
}
