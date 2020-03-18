import 'package:flutter/material.dart';

import 'fruit_skeleton.dart';

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
  //Fruit getById(int id) => Fruit(id, _fruitNames[id % _fruitNames.length],
  // _myImages[id % _myImages.length]);

  Fruit getById(int id) => Fruit(id, _fruitNames[id % _fruitNames.length],
      _myImages[id % _myImages.length]);

  ///Get fruit by its position in the list.
  Fruit getByPosition(int position) {
    // the fruit position in the list is also its id.
    return getById(position);
  }
}
