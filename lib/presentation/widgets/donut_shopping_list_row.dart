import 'package:flutter/material.dart';

import 'package:exampledonutapp/core/constants/constants.dart';
import 'package:exampledonutapp/models/donut_model.dart';

class DonutShoppingListRow extends StatelessWidget {
  const DonutShoppingListRow(
      {super.key, required this.onDeleteRow, required this.donut});

  final DonutModel donut;
  final VoidCallback onDeleteRow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(donut.imgSrc, width: 80, height: 80),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  donut.name,
                  style: const TextStyle(
                    color: AppColors.mainDarkColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).hoverColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: AppColors.mainDarkColor.withOpacity(0.2),
                    ),
                  ),
                  child: Text(
                    "R${donut.price.toStringAsFixed(2)}",
                    style: TextStyle(
                      color: AppColors.mainDarkColor.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: onDeleteRow,
            icon: const Icon(
              Icons.delete_forever,
              color: AppColors.mainColor,
            ),
          )
        ],
      ),
    );
  }
}
