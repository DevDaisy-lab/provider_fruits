import 'package:flutter/foundation.dart';

import 'lis.dart';
import 'fruit.dart';

class CartModel extends ChangeNotifier {
  ///The private field backing (list).
  late ListModel _list;

  ///Internal, private state of the cart. Stores the 'ids' of each fruit.
  final List<int> _fruitIds = [];

  ///The current list. Used to construct fruits from numeric ids.
  ListModel get list => _list;

  set list(ListModel newList) {
    assert(newList != null);
    assert(_fruitIds.every((id) => newList.getById(id) != null),
        'The list $newList does not have one of $_fruitIds in it.');
    _list = newList;

    //Notify listeners, in case the new list provides information
    //different from the previous one. From example, availability of an fruits
    //might have changed.

    notifyListeners();
  }

  ///List of fruits in the cart.
  List<Fruit> get fruits => _fruitIds.map((id) => _list.getById(id)).toList();

  ///The current total price in the cart.
  int get totalPrice =>
      fruits.fold(0, (total, current) => total + current.price);

  ///Adds (fruit) to cart. This is the only way to modify the cart from outside.
  void add(Fruit fruit) {
    _fruitIds.add(fruit.id);
    //This line tells (Model) that it should rebuild
    // the widgets that depends on it

    notifyListeners();
  }
}
