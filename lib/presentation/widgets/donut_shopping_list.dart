import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exampledonutapp/models/donut_model.dart';
import 'package:exampledonutapp/presentation/providers/donut_shopping_cart_service.dart';

import 'donut_shopping_list_row.dart';

class DonutShoppingList extends StatelessWidget {
  const DonutShoppingList({super.key, required this.donutCart});
  final List<DonutModel> donutCart;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: donutCart.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final currentDonut = donutCart[index];

        return DonutShoppingListRow(
          onDeleteRow: () => context
              .read<DonutShoppingCartService>()
              .removeFromCart(currentDonut),
          donut: currentDonut,
        );
      },
    );
  }
}
