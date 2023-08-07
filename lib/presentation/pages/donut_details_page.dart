import 'package:exampledonutapp/models/donut_model.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class DonutDetailsPage extends StatefulWidget {
  const DonutDetailsPage({super.key});

  @override
  State<DonutDetailsPage> createState() => _DonutDetailsPageState();
}

class _DonutDetailsPageState extends State<DonutDetailsPage> {
  final DonutModel selectedDonut = DonutModel.donuts.first;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.mainColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(Utils.donutLogoRedText, width: 120),
      ),
      body: Column(children: [
        Container(),
        Expanded(
          child: Column(
            children: [],
          ),
        )
      ]),
    );
  }
}
