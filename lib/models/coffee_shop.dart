import 'package:coffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';
class CoffeeShop extends ChangeNotifier {
  //coffee for sale
  final List<Coffee> _shop =[
    //black coffee
    Coffee(name: 'Long Black', price: '4.10', imagePath: "lib/images/winter-drink.png"),
    //latte
    Coffee(name: 'Latte', price: '4.10', imagePath: "lib/images/cup.png"),
    //expresso
    Coffee(name: 'expresso', price: '4.10', imagePath: "lib/images/coffee.png"),
    //iced coffe
    Coffee(name: 'iced coffe', price: '4.10', imagePath: "lib/images/coffee-cup.png"),
  ];
  //user cart
  List<Coffee>_userCart=[];
  //get coffee list
  List<Coffee> get coffeeShop=>_shop;
  //get user cart
  List<Coffee> get userCart=>_userCart;
  //add item to cart
void addItemToCart(Coffee coffee1){
  _userCart.add(coffee1);
  notifyListeners();
}
  //remove item from cart
  void removeItemFromCart(Coffee coffee1){
  _userCart.remove(coffee1);
  notifyListeners();
  }
}