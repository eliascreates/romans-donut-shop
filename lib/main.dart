import 'package:flutter/material.dart';
import 'core/constants/constants.dart' show AppColors;
import 'presentation/pages/pages.dart' show SplashPage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donut App',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: AppColors.secondaryColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const SplashPage(),
    );
  }
}
