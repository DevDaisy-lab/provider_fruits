import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../models/cart.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme5 = Theme.of(context).textTheme.headline5;
    var cart = Provider.of<CartModel>(context);

    return ListView.builder(
      itemCount: cart.fruits.length,
      itemBuilder: (context, index) => Platform.isIOS
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Card(
                elevation: 0,
                color: CupertinoColors.systemGreen,
                child: Row(
                  children: [
                    const Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      cart.fruits[index].name,
                      style: textTheme5,
                    ),
                  ],
                ),
              ),
            )
          : ListTile(
              leading: Icon(Icons.done),
              title: Text(
                cart.fruits[index].name,
                style: textTheme5,
              ),
            ),
    );
  }
}
