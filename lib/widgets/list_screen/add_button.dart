import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../models/fruit_skeleton.dart';
import '../../models/cart_model.dart';

class AddButton extends StatelessWidget {
  final Fruit fruit;

  const AddButton({Key key, @required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);
    var textTheme = Theme.of(context).textTheme.display2;

    return FlatButton(
      onPressed: cart.fruits.contains(fruit) ? null : () => cart.add(fruit),
      splashColor: Theme.of(context).primaryColor,
      child: cart.fruits.contains(fruit)
          ? Icon(
              Icons.check,
              semanticLabel: 'Added',
            )
          : Container(
              padding: EdgeInsets.all(5),
              color: Colors.red[300],
              child: Text(
                'add fruit',
                style: textTheme,
              ),
            ),
    );
  }
}
