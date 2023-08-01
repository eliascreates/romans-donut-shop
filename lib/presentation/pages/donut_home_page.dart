import 'package:flutter/material.dart';

import 'package:exampledonutapp/core/constants/constants.dart';

import '../widgets/widgets.dart';

class DonutHomePage extends StatelessWidget {
  const DonutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: DonutSideMenu()),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.mainColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(Utils.donutLogoRedText, width: 120),
      ),
      body: Column(children: [
        Expanded(child: Container()),
        const DonutBottomBar(),
      ]),
    );
  }
}

class DonutBottomBar extends StatelessWidget {
  const DonutBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            color: AppColors.mainColor,
            icon: const Icon(Icons.trip_origin),
          ),
          IconButton(
            onPressed: () {},
            color: AppColors.mainColor,
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            color: AppColors.mainColor,
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
