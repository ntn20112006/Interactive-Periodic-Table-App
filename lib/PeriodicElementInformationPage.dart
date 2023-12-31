import 'package:flutter/material.dart';

class PeriodicElementInformationPage extends StatelessWidget {
  final String elementSymbol;
  final String elementDescription;

  const PeriodicElementInformationPage({
    super.key,
    required this.elementSymbol,
    required this.elementDescription
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              ElementSymbol(elementSymbol: elementSymbol),
              ElementDescription(elementDescription: elementDescription)
            ],
          ),
          Row(
            children: [
              ElementDescription(elementDescription: elementDescription),
              const icon()
            ],
          )
        ]
      )
    );
  }
}

class ElementDescription extends StatelessWidget {
  final String elementDescription;

  const ElementDescription({
    super.key,
    required this.elementDescription
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      elementDescription
    );
  }
}

class ElementSymbol extends StatelessWidget {
  final String elementSymbol;

  const ElementSymbol({
    super.key,
    required this.elementSymbol
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Center(
        child: Text(
          elementSymbol,
          textAlign: TextAlign.center
        )
      )
    );
  }
}

// ignore: camel_case_types
class icon extends StatelessWidget {
  const icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: const Icon(
        Icons.favorite,
        color: Colors.pink,
        size: 40,
      )
    );
  }
}
