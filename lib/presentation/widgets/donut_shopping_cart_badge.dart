import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exampledonutapp/core/constants/constants.dart';
import 'package:exampledonutapp/presentation/providers/donut_shopping_cart_service.dart';

class DonutShoppingCartBadge extends StatelessWidget {
  const DonutShoppingCartBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final totalDonuts = context.select(
      (DonutShoppingCartService service) => service.cartDonuts.length,
    );

    if (totalDonuts == 0) return const SizedBox(); //Show Cart Only With Items

    return Transform.scale(
      scale: 0.6,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            Text('$totalDonuts',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            const Icon(
              Icons.shopping_cart,
              size: 25,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
