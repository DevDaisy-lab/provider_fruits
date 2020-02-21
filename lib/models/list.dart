import 'package:flutter/material.dart';

///The List of fruits the user can add to card.
///The list is immutable (fuits not added, removed or changed during
/// the execution of the app)

class ListModel {
  static const _fruitNames = [
    'Apples',
    'Banana',
    'Figs',
    'Grapefruit',
    'Kiwifruit',
    'Lemon',
    'Mandarin',
    'Mango',
    'Peaches',
    'Pear',
    'Pineapple',
    'Watermelon',
  ];

  static const List<String> _myImages = [
    'assets/images/apple.jpg',
    'assets/images/banana.jpg',
    'assets/images/fig.jpg',
    'assets/images/grapefruit.jpg',
    'assets/images/kiwifruit.jpg',
    'assets/images/lemon.jpg',
    'assets/images/mandarin.jpg',
    'assets/images/mango.jpg',
    'assets/images/peache.jpg',
    'assets/images/pear.jpg',
    'assets/images/pineapple.jpg',
    'assets/images/watermelon.jpg',
  ];

  ///Get fruit by (id).
  ///In this sample, the list is infinite, looping over (_fruitNames).
  Fruit getById(int id) => Fruit(id, _fruitNames[id % _fruitNames.length],
      _myImages[id % _myImages.length]);

  ///Get fruit by its position in the list.
  Fruit getByPosition(int position) {
    // the fruit position in the list is also its id.
    return getById(position);
  }
}

@immutable
class Fruit {
  final int id;
  final String name;
  final String image;
  final int price = 15;

  Fruit(this.id, this.name, this.image);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Fruit && other.id == id;
}
