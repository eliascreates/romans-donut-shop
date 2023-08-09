import 'package:exampledonutapp/models/donut_model.dart';
import 'package:exampledonutapp/presentation/providers/donut_shopping_cart_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'donut_shopping_list_row.dart';

class DonutShoppingList extends StatefulWidget {
  const DonutShoppingList({super.key, required this.donutCart});
  final List<DonutModel> donutCart;

  @override
  State<DonutShoppingList> createState() => _DonutShoppingListState();
}

class _DonutShoppingListState extends State<DonutShoppingList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.donutCart.length,
      itemBuilder: (context, index) {
        final currentDonut = widget.donutCart[index];

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
