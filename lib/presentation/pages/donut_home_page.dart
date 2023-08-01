import 'package:flutter/material.dart';

class DonutHomePage extends StatelessWidget {
  const DonutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Love Me a Donut'),
      ),
      body: const Center(
        child: Text('Donut Shop Main Page'),
      ),
    );
  }
}
