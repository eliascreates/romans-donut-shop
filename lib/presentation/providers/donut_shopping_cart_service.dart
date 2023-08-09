import 'package:exampledonutapp/models/donut_model.dart';
import 'package:flutter/material.dart';

class DonutShoppingCartService extends ChangeNotifier {
  List<DonutModel> cartDonuts = [];

  void addToCart(DonutModel donut) {
    cartDonuts.add(donut);
    notifyListeners();
  }

  void removeFromCart(DonutModel donut) {
    cartDonuts.removeWhere((cartDonut) => cartDonut.name == donut.name);
    notifyListeners();
  }

  void clearDonutCart() {
    cartDonuts.clear();
    notifyListeners();
  }

  double getTotalCartPrice() {
    double totalPrice = 0;
    for (var donut in cartDonuts) {
      totalPrice += donut.price;
    }
    return totalPrice;
  }

  bool isDonutInCart(DonutModel donut) {
    return cartDonuts.any((cartDonut) => cartDonut.name == donut.name);
  }
}
