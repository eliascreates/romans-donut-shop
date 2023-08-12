import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exampledonutapp/presentation/providers/donut_shopping_cart_service.dart';

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
                onPressed: () => bNavBarService.setTabSelection(AppRoutes.main),
                tooltip: Strings.homeToolTip,
                color: bNavBarService.tabSelection == AppRoutes.main
                    ? AppColors.mainDarkColor
                    : AppColors.mainColor,
                icon: const Icon(Icons.trip_origin),
              ),
              IconButton(
                onPressed: () =>
                    bNavBarService.setTabSelection(AppRoutes.favorites),
                tooltip: Strings.favoritesToolTip,
                color: bNavBarService.tabSelection == AppRoutes.favorites
                    ? AppColors.mainDarkColor
                    : AppColors.mainColor,
                icon: const Icon(Icons.favorite),
              ),
              Consumer<DonutShoppingCartService>(
                builder: (context, cartService, child) {
                  final int cartItems = cartService.cartDonuts.length;

                  return Container(
                    padding: const EdgeInsets.only(top: 10),
                    constraints: const BoxConstraints(minHeight: 70),
                    decoration: BoxDecoration(
                      color: cartItems == 0
                          ? null
                          : bNavBarService.tabSelection ==
                                  AppRoutes.shoppingcart
                              ? AppColors.mainDarkColor
                              : AppColors.mainColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (cartItems > 0)
                          Text(
                            cartItems.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        IconButton(
                          onPressed: () => bNavBarService
                              .setTabSelection(AppRoutes.shoppingcart),
                          tooltip: Strings.shoppingCartToolTip,
                          style: IconButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          color: cartItems > 0
                              ? Colors.white
                              : bNavBarService.tabSelection ==
                                      AppRoutes.shoppingcart
                                  ? AppColors.mainDarkColor
                                  : AppColors.mainColor,
                          icon: const Icon(Icons.shopping_cart),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
