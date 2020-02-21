import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../models/cart.dart';

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var priceStyle = Theme.of(context).textTheme.display4;

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CartModel>(
              builder: (context, cart, child) =>
                  Text('\$${cart.totalPrice}', style: priceStyle),
            ),
            SizedBox(width: 25),
            FlatButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Buying not supported yet')));
              },
              color: Colors.white,
              child: Text(
                'Buy',
                style: TextStyle(color: Colors.red[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
