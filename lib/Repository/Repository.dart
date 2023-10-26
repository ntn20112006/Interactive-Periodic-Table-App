import 'package:flutter/material.dart';
import 'package:interactive_periodic_table_app/PeriodicElementObject.dart';

class Repository {
  static List<List<PeriodicElementObject>> getPeriodicElementsList() {
    return [
      [
        PeriodicElementObject(
          elementName: "Hydrogen",
          elementSymbol: "H",
          elementNumber: "1",
          elementDescription: "test",
          color: Colors.blue
        ),
        PeriodicElementObject(
          elementName: "Lithium",
          elementSymbol: "Li",
          elementNumber: "3",
          elementDescription: "test",
          color: Colors.green
        )
      ],
      [PeriodicElementObject(
          elementName: "Belium",
          elementSymbol: "Be",
          elementNumber: "2",
          elementDescription: "test",
          color: Colors.red
        )
      ]
    ];
  }
}
