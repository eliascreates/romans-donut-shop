import 'package:flutter/material.dart';

class DonutFavorites extends StatelessWidget {
  const DonutFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorites\n🚧',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade600,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
