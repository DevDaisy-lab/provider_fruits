import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../models/fruit.dart';
import '../../models/cart.dart';

class AddButton extends StatelessWidget {
  final Fruit fruit;

  const AddButton({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    var textTheme1 = Theme.of(context).textTheme.headline1;

    return Platform.isIOS
        ? CupertinoButton(
            onPressed:
                cart.fruits.contains(fruit) ? null : () => cart.add(fruit),
            child: cart.fruits.contains(fruit)
                ? const Icon(
                    Icons.check,
                    semanticLabel: 'Added',
                  )
                : Container(
                    padding: const EdgeInsets.all(5),
                    color: CupertinoColors.systemGreen,
                    child: Text(
                      'add fruit',
                      style: textTheme1,
                    ),
                  ),
          )
        : FlatButton(
            onPressed:
                cart.fruits.contains(fruit) ? null : () => cart.add(fruit),
            splashColor: Theme.of(context).primaryColor,
            child: cart.fruits.contains(fruit)
                ? Icon(
                    Icons.check,
                    semanticLabel: 'Added',
                  )
                : Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.green,
                    child: Text(
                      'add fruit',
                      style: textTheme1,
                    ),
                  ),
          );
  }
}
