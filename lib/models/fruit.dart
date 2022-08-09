import 'package:flutter/foundation.dart';

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
