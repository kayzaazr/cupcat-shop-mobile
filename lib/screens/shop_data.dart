import 'package:flutter/material.dart';
import 'package:cupcat_shop/widgets/shop_card.dart';

class ShopData extends ChangeNotifier {
  List<ShopItem> items = [];

  void addProduct(ShopItem product) {
    items.add(product);
    notifyListeners();
  }
}
