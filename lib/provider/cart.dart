import 'package:e_commerce/widgets/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectitems=[
  
  ];
  double coast = 0;
  add(item product){
    selectitems.add(product);
    coast +=product.price;
    notifyListeners();
  }
  delete(item product){
    selectitems.remove(product);
    coast -=product.price;
    notifyListeners();
  }
}
