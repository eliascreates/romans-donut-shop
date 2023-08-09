// import 'package:exampledonutapp/core/constants/colors.dart';
// import 'package:exampledonutapp/presentation/providers/donut_service.dart';
import 'package:exampledonutapp/presentation/providers/donut_service.dart';
import 'package:exampledonutapp/presentation/widgets/donut_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../widgets/widgets.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DonutPager(),
          const DonutFilterBar(),
          Expanded(
            child: Consumer<DonutService>(
              builder: (context, donutService, state) {
                return DonutList(donuts: donutService.filteredDonuts);
              },
            ),
          )
        ],
      ),
    );
  }
}
