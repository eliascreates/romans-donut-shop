import 'package:flutter/material.dart';

import '../widgets/donut_pager.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DonutPager(),
        ],
      ),
    );
  }
}
