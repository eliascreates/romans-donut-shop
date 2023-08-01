import 'package:flutter/material.dart';

import '../../core/constants/constants.dart' show AppColors, Utils;

class DonutSideMenu extends StatelessWidget {
  const DonutSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Image.asset(Utils.donutLogoWhiteNoText, width: 100),
          ),
          Image.asset(Utils.donutLogoWhiteText, width: 150),
        ],
      ),
    );
  }
}
