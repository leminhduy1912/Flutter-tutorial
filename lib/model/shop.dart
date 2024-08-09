import 'package:flutter/cupertino.dart';

import 'food.dart';
class Shop extends ChangeNotifier{
  //food menu
  final List<Food> _foodMenu = [
    Food(name: "Salmon Sushi", rating: "4.9",
        imgPath: "lib/images/salmon_sushi.png", price: "21.00"),
    Food(name: "Salmon Sushi", rating: "4.9",
        imgPath: "lib/images/tuna_sushi.png", price: "21.00"),
  ];
  //customer cart
List<Food> _cart =[];
//getter method
List<Food> get foodMenu => _foodMenu;
List<Food> get cart=>_cart;
//add to cart
void addToCart(Food foodItem,int quantity){
  for (int i=0;i< quantity;i++){
    _cart.add(foodItem);
    notifyListeners();
  }
}
//remove to cart
void removeToCart(Food foodItem){
  _cart.remove(foodItem);
  notifyListeners();
}
}