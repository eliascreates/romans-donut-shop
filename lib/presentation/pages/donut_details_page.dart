import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exampledonutapp/models/donut_model.dart';
import 'package:exampledonutapp/presentation/providers/donut_service.dart';

import '../../core/constants/constants.dart';

class DonutDetailsPage extends StatefulWidget {
  const DonutDetailsPage({super.key});

  @override
  State<DonutDetailsPage> createState() => _DonutDetailsPageState();
}

class _DonutDetailsPageState extends State<DonutDetailsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotationAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();

    rotationAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DonutModel selectedDonut = context.select(
      (DonutService service) => service.getSelectedDonut(),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Utils.mainAppNav.currentState?.pop(),
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        iconTheme: const IconThemeData(color: AppColors.mainDarkColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(Utils.donutLogoRedText, width: 120),
      ),
      body: Column(children: [
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -40,
                right: -120,
                child: RotationTransition(
                  turns: rotationAnimation,
                  child: Hero(
                    tag: selectedDonut.name,
                    child: Image.asset(
                      selectedDonut.imgSrc,
                      width: MediaQuery.sizeOf(context).width * 1.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          selectedDonut.name,
                          softWrap: true,
                          style: const TextStyle(
                            color: AppColors.mainDarkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline_rounded,
                          size: 30,
                          color: AppColors.mainDarkColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.mainDarkColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "R${selectedDonut.price.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(selectedDonut.description),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        elevation: 0,
                        fixedSize:
                            Size.fromWidth(MediaQuery.sizeOf(context).width),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        backgroundColor: AppColors.mainlightDarkColor),
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: AppColors.mainDarkColor,
                    ),
                    label: const Text(
                      "Add To Card",
                      style: TextStyle(color: AppColors.mainDarkColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
