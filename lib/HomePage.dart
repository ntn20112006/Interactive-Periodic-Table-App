import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateToPeriodicTable() {
    // TODO Navigate to period table screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TempIcon(),
            const Title(),
            const LineSeparator(),
            GestureDetector(
              onTap: _navigateToPeriodicTable,
              child: const NavigationButton()
            )
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToPeriodicTable,
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Navigate",
          textAlign: TextAlign.center
        )
      )
    );
  }
}

class LineSeparator extends StatelessWidget {
  const LineSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 5,
      margin: const EdgeInsets.fromLTRB(0, 100, 0, 30),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(3)
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "McNally's Lab"
    );
  }
}

class TempIcon extends StatelessWidget {
  const TempIcon({
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
