import 'package:flutter/material.dart';

import 'package:exampledonutapp/core/constants/constants.dart';

import '../widgets/widgets.dart';
import 'donut_main_page.dart';

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
              initialRoute: '/main',
              onGenerateRoute: (RouteSettings settings) {
                Widget page;

                switch (settings.name) {
                  case '/main':
                    page = const DonutMainPage();
                    break;
                  case '/favorites':
                    page = const Center(child: Text('favorites'));
                    break;
                  case '/shoppingcart':
                    page = const Center(child: Text('shopping cart'));
                    break;
                  default:
                    page = const Center(child: Text('main'));
                    break;
                }

                return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => page,
                    transitionDuration: Duration.zero);
              },
            ),
          ),
          const DonutBottomBar(),
        ],
      ),
    );
  }
}
