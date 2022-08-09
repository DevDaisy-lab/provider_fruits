import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/cart/cart_list.dart';
import '../widgets/cart/cart_total.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme5 = Theme.of(context).textTheme.headline5;
    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              backgroundColor: CupertinoColors.systemGreen,
              middle: Text(
                'Cart',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            child: Container(
              color: CupertinoColors.systemGreen,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CartList(),
                    ),
                  ),
                  Divider(height: 5, color: Colors.black),
                  CartTotal(),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'Cart',
                style: textTheme5,
              ),
              backgroundColor: Colors.green,
            ),
            body: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: CartList(),
                    ),
                  ),
                  Divider(height: 5, color: Colors.black),
                  CartTotal(),
                ],
              ),
            ),
          );
  }
}
