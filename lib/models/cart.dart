import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeShop=[
    
    Shoe(
      name: "Shoe 1",
      price: "100",
      description: "Shoe 1 Description is here",
      imagePath: "lib/images/Shoe1.jpg"
    ),
    Shoe(
      name: "Shoe 2",
      price: "200",
      description: "Shoe 2 Description is here",
      imagePath: "lib/images/Shoe2.jpg"
    ),
    Shoe(
      name: "Shoe 3",
      price: "300",
      description: "Shoe 3 Description is here",
      imagePath: "lib/images/Shoe3.jpg"
    ),
    Shoe(
      name: "Shoe 4",
      price: "400",
      description: "Shoe 4 Description is here",
      imagePath: "lib/images/Shoe4.jpg"
    )
  ];

  List<Shoe> userCart=[];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemtoCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemtoCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}