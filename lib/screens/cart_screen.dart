import 'package:flutter/material.dart';

import '../widgets/cart_screen/cart_list.dart';
import '../widgets/cart_screen/cart_total.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.display4,
        ),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        color: Colors.red[300],
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
