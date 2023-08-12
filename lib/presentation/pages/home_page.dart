import 'package:flutter/material.dart';

import 'package:exampledonutapp/core/constants/constants.dart';
import 'package:exampledonutapp/presentation/providers/donut_bottom_bar_selection_service.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: DonutSideMenu()),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.mainDarkColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(Utils.donutLogoRedText, width: 120),
      ),
      body: Column(
        children: [
          Expanded(
            child: Navigator(
              key: Utils.mainListNav,
              initialRoute: AppRoutes.main,
              onGenerateRoute: AppRoutes.onGenerateRoute,
            ),
          ),
          const DonutBottomBar(),
        ],
      ),
    );
  }
}
