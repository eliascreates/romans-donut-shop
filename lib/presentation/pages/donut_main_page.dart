// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exampledonutapp/core/constants/colors.dart';
import 'package:exampledonutapp/presentation/providers/donut_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/donut_pager.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [DonutPager(), DonutFilterBar()],
      ),
    );
  }
}

class DonutFilterBar extends StatelessWidget {
  const DonutFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Consumer<DonutService>(
        builder: (context, donutService, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:
                    List.generate(donutService.filterBarItems.length, (index) {
                  DonutFilterBarItem item = donutService.filterBarItems[index];

                  return InkWell(
                    splashColor: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => donutService.filterDonutsTypeBy(item.id),
                    child: Text(
                      item.label,
                      style: TextStyle(
                        color: donutService.selectedDonutType == item.id
                            ? AppColors.mainColor
                            : null,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  AnimatedAlign(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    alignment: alignBasedOnTap(donutService.selectedDonutType),
                    child: Container(
                      height: 5,
                      width: MediaQuery.sizeOf(context).width * 0.3 - 20,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  Alignment alignBasedOnTap(String filterBarId) {
    switch (filterBarId) {
      case 'classic':
        return Alignment.centerLeft;
      case 'sprinkled':
        return Alignment.center;
      case 'stuffed':
        return Alignment.centerRight;
      default:
        return Alignment.centerLeft;
    }
  }
}

class DonutFilterBarItem {
  DonutFilterBarItem({required this.id, required this.label});

  final String id;
  final String label;
}
