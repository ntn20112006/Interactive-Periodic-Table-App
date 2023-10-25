import 'package:flutter/material.dart';
import 'package:interactive_periodic_table_app/PeriodicElementInformationPage.dart';
import 'package:interactive_periodic_table_app/PeriodicElementObject.dart';

class PeriodicTablePage extends StatelessWidget {
  final List<List<PeriodicElementObject>> periodicElementsList;

  const PeriodicTablePage({
    super.key,
    required this.periodicElementsList
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          for (var periodicElementsColumn in periodicElementsList)
            Column(
              children: [
                for (var periodicElement in periodicElementsColumn)
                  PeriodicTableElementCell(
                    elementName: periodicElement.elementName,
                    elementNumber: periodicElement.elementNumber,
                    elementSymbol: periodicElement.elementSymbol,
                    color: periodicElement.color,
                    elementDescription: "test"
                  )
              ]
            )
        ]
      )
    );
  }
}

class PeriodicTableElementCell extends StatelessWidget {
  final String elementName;
  final String elementSymbol;
  final String elementNumber;
  final Color color;
  final String elementDescription;

  const PeriodicTableElementCell({
    super.key,
    required this.elementName,
    required this.elementNumber,
    required this.elementSymbol,
    required this.color,
    required this.elementDescription
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PeriodicElementInformationPage(elementSymbol: elementSymbol, elementDescription: elementDescription)
          )
        );
      },
      child: Container (
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElementNumber(elementNumber: elementNumber),
            ElementSymbol(elementSymbol: elementSymbol),
            ElementName(elementName: elementName)
          ]
        )
      )
    );
  }
}

class ElementName extends StatelessWidget {
  const ElementName({
    super.key,
    required this.elementName,
  });

  final String elementName;

  @override
  Widget build(BuildContext context) {
    return Text(
      elementName,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 10)
    );
  }
}

class ElementSymbol extends StatelessWidget {
  const ElementSymbol({
    super.key,
    required this.elementSymbol,
  });

  final String elementSymbol;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        elementSymbol,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20)
      )
    );
  }
}

class ElementNumber extends StatelessWidget {
  const ElementNumber({
    super.key,
    required this.elementNumber,
  });

  final String elementNumber;

  @override
  Widget build(BuildContext context) {
    return Text(
      elementNumber,
      textAlign: TextAlign.left,
      style: const TextStyle(fontSize: 10),
    );
  }
}
