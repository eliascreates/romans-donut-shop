import 'package:exampledonutapp/models/donut_model.dart';
import 'package:flutter/material.dart';

import 'donut_card.dart';

class DonutList extends StatefulWidget {
  final List<DonutModel> donuts;
  const DonutList({super.key, required this.donuts});
  @override
  State<DonutList> createState() => _DonutListState();
}

class _DonutListState extends State<DonutList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.donuts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final currentDonut = widget.donuts[index];

        return DonutCard(donut: currentDonut);
      },
    );
  }
}

