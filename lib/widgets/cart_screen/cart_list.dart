import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../models/cart_model.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var addedFruitNameStyle = Theme.of(context).textTheme.display4;
    var cart = Provider.of<CartModel>(context);

    return ListView.builder(
      itemCount: cart.fruits.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        title: Text(
          cart.fruits[index].name,
          style: addedFruitNameStyle,
        ),
      ),
    );
  }
}
