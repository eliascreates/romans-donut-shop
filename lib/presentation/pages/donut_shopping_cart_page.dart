import 'package:exampledonutapp/core/constants/constants.dart';
import 'package:exampledonutapp/presentation/providers/donut_shopping_cart_service.dart';
import 'package:exampledonutapp/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DonutShoppingCartPage extends StatefulWidget {
  const DonutShoppingCartPage({super.key});

  @override
  State<DonutShoppingCartPage> createState() => _DonutShoppingCartPageState();
}

class _DonutShoppingCartPageState extends State<DonutShoppingCartPage>
    with SingleTickerProviderStateMixin {
  late AnimationController titleController;
  late Animation<double> titleAnimation;

  @override
  void initState() {
    super.initState();
    titleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    titleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: titleController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textColor = textTheme.bodySmall?.color;

    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeTransition(
            opacity: titleAnimation,
            child: Image.asset(Utils.donutTitleMyDonuts, width: 170),
          ),
          Expanded(
            child: Consumer<DonutShoppingCartService>(
              builder: (context, cartService, child) {
                if (cartService.cartDonuts.isEmpty) {
                  return Center(
                    child: SizedBox(
                      width: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 50,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "You don't have any on your cart yet!",
                            textAlign: TextAlign.center,
                            style: textTheme.titleMedium
                                ?.copyWith(color: textColor),
                          )
                        ],
                      ),
                    ),
                  );
                }

                return DonutShoppingList(donutCart: cartService.cartDonuts);
              },
            ),
          ),
        ],
      ),
    );
  }
}
