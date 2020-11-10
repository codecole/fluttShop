import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String name;
  final int quantity;
  final double price;

  CartItem(
      {@required this.id,
      @required this.name,
      @required this.price,
      @required this.quantity});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }
  int get itemCount {
    return _items.length;
  }
  void addItem(String product, String name, double price){
    if (_items.containsKey(product)){
items.update(product, (existingCartItem) => CartItem(id:DateTime.now().toString() ,name:existingCartItem.name, quantity:existingCartItem.quantity+1 ,price:existingCartItem.price ) )
    }else{
      _items.putIfAbsent((product), () => CartItem(
        id: DateTime.now().toString(),quantity: 1,price: price,name: name
      ));
    }
    notifyListeners();
  }

  void removeItem (String id){
    _items.remove(id);
    notifyListeners();
  }
  void removeOneItem (String id){
    if(!_items.containsKey(id)){
      return;
    }if (_items[id].quantity >1){
      _items.update(id,(existingCartItem)=>CartItem(
        id: DateTime.now().toString(), name: existingCartItem.name,price: existingCartItem.price,quantity: existingCartItem.quantity-1
      ));
    }
    notifyListeners();
  }
  void clear(){
    _items = {};
    notifyListeners();
  }
}
