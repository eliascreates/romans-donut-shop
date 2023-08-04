// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../pages/donut_main_page.dart';

class DonutService extends ChangeNotifier {
  List<DonutFilterBarItem> filterBarItems = [
    DonutFilterBarItem(id: 'classic', label: 'Classic'),
    DonutFilterBarItem(id: 'sprinkled', label: 'Sprinkled'),
    DonutFilterBarItem(id: 'stuffed', label: 'Stuffed'),
  ];

  late String selectedDonutType;

  DonutService() {
    selectedDonutType = filterBarItems.first.id;
  }

  void filterDonutsTypeBy(String type) {
    selectedDonutType = type;
    notifyListeners();
  }
}
