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
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  List<DonutModel> insertedItems = [];

  @override
  void initState() {
    super.initState();
    animateInsertion();
  }

  Future<void> animateInsertion() async {
    for (var i = 0; i < widget.donuts.length; i++) {
      await Future.delayed(const Duration(milliseconds: 125));
      insertedItems.add(widget.donuts[i]);
      _key.currentState?.insertItem(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      physics: const BouncingScrollPhysics(),
      key: _key,
      initialItemCount: insertedItems.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index, animation) {
        final currentDonut = widget.donuts[index];

        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.2, 0.0),
            end: const Offset(0.0, 0.0),
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          ),
          child: FadeTransition(
              opacity: Tween(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut),
              ),
              child: DonutCard(donut: currentDonut)),
        );
      },
    );
  }
}
