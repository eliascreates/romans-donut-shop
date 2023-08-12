import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exampledonutapp/models/donut_model.dart';
import 'package:exampledonutapp/presentation/providers/donut_service.dart';

import '../../core/constants/constants.dart';

class DonutCard extends StatelessWidget {
  const DonutCard({super.key, required this.donut});

  final DonutModel donut;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var donutService = Provider.of<DonutService>(context, listen: false);
        donutService.onDonutSelected(donut);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            width: 150,
            padding: const EdgeInsets.all(15),
            margin:
                const EdgeInsets.only(left: 10, top: 80, right: 10, bottom: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4.0),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  donut.name,
                  style: const TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "R${donut.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: donut.name,
              child: Image.asset(
                donut.imgSrc,
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
