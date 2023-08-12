import 'package:flutter/material.dart';

import 'package:exampledonutapp/core/constants/constants.dart';
import 'package:exampledonutapp/models/donut_model.dart';

import '../widgets/donut_filter_bar.dart' show DonutFilterBarItem;

class DonutService extends ChangeNotifier {
  List<DonutFilterBarItem> filterBarItems = [
    DonutFilterBarItem(id: 'classic', label: 'Classic'),
    DonutFilterBarItem(id: 'sprinkled', label: 'Sprinkled'),
    DonutFilterBarItem(id: 'stuffed', label: 'Stuffed'),
  ];

  late String selectedDonutType;
  List<DonutModel> filteredDonuts = [];
  late DonutModel selectedDonut;

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

  DonutModel getSelectedDonut() {
    return selectedDonut;
  }

  void onDonutSelected(DonutModel donut) {
    selectedDonut = donut;
    Utils.mainAppNav.currentState?.pushNamed('/details');
  }
}
