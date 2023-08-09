import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/constants/constants.dart';
import '../providers/donut_bottom_bar_selection_service.dart';

class DonutBottomBar extends StatelessWidget {
  const DonutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Consumer<DonutBottomBarSelectionService>(
        builder: (context, bNavBarService, child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => bNavBarService.setTabSelection('main'),
                tooltip: 'Home',
                color: bNavBarService.tabSelection == 'main'
                    ? AppColors.mainDarkColor
                    : AppColors.mainColor,
                icon: const Icon(Icons.trip_origin),
              ),
              IconButton(
                onPressed: () => bNavBarService.setTabSelection('favorites'),
                tooltip: 'favorites',
                color: bNavBarService.tabSelection == 'favorites'
                    ? AppColors.mainDarkColor
                    : AppColors.mainColor,
                icon: const Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () => bNavBarService.setTabSelection('shoppingcart'),
                tooltip: 'Shopping Cart',
                color: bNavBarService.tabSelection == 'shoppingcart'
                    ? AppColors.mainDarkColor
                    : AppColors.mainColor,
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          );
        },
      ),
    );
  }
}
