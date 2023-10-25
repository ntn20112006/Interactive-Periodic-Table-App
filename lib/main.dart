import 'package:flutter/material.dart';
import 'package:interactive_periodic_table_app/PeriodicElementInformationPage.dart';
import 'package:interactive_periodic_table_app/PeriodicElementObject.dart';
import 'package:interactive_periodic_table_app/PeriodicTablePage.dart';
import 'dart:ui' as ui;
import 'package:interactive_periodic_table_app/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Period Table App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //testing
      // home: const HomePage(),
      // home: PeriodicTablePage(periodicElementsList: [
      //   [
      //     PeriodicElementObject(
      //       elementName: "Hydrogen",
      //       elementSymbol: "H",
      //       elementNumber: "1",
      //       elementDescription: "test",
      //       color: Color.blue
      //     ),
      //     PeriodicElementObject(
      //       elementName: "Lithium",
      //       elementSymbol: "Li",
      //       elementNumber: "3",
      //       elementDescription: "test",
      //       color: Color.green
      //     )
      //   ],
      //   [PeriodicElementObject(
      //       elementName: "Belium",
      //       elementSymbol: "Be",
      //       elementNumber: "2",
      //       elementDescription: "test",
      //       color: Color.red
      //     )
      //   ]]
      // )
      // home: const PeriodicElementInformationPage()
    );
  }
}
