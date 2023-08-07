import 'package:exampledonutapp/core/constants/utils.dart';
import 'package:exampledonutapp/presentation/pages/donut_details_page.dart';
import 'package:exampledonutapp/presentation/pages/home_page.dart';
import 'package:exampledonutapp/presentation/providers/donut_bottom_bar_selection_service.dart';
import 'package:exampledonutapp/presentation/providers/donut_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/constants/constants.dart' show AppColors;
import 'presentation/pages/pages.dart' show SplashPage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DonutBottomBarSelectionService()),
        ChangeNotifierProvider(create: (_) => DonutService())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Donut App',
        theme: ThemeData(
          primaryColor: AppColors.mainColor,
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.secondaryColor),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        initialRoute: '/',
        navigatorKey: Utils.mainAppNav,
        routes: {
          // '/': (context) => const SplashPage(),
          '/': (context) => const DonutDetailsPage(),
          '/main': (context) => const HomePage()
        },
        // home: const SplashPage(),
      ),
    );
  }
}
