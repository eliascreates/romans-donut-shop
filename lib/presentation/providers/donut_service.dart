// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exampledonutapp/models/donut_model.dart';
import 'package:flutter/material.dart';

import '../widgets/donut_filter_bar.dart' show DonutFilterBarItem;

class DonutService extends ChangeNotifier {
  List<DonutFilterBarItem> filterBarItems = [
    DonutFilterBarItem(id: 'classic', label: 'Classic'),
    DonutFilterBarItem(id: 'sprinkled', label: 'Sprinkled'),
    DonutFilterBarItem(id: 'stuffed', label: 'Stuffed'),
  ];

  late String selectedDonutType;
  List<DonutModel> filteredDonuts = [];

  DonutService() {
    selectedDonutType = filterBarItems.first.id;
    filterDonutsTypeBy(selectedDonutType);
  }

  void filterDonutsTypeBy(String type) {
    selectedDonutType = type;

    filteredDonuts =
        DonutModel.donuts.where((donut) => donut.type == type).toList();
    notifyListeners();
  }
}
