import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../models/cart_model.dart';

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
            //The only required argument of the Consumer widget is the builder.
            // Builder is a function that is called whenever the ChangeNotifier
            // changes. (In other words, when you call notifyListeners()
            // in your model, all the builder methods of all the corresponding
            // Consumer widgets are called.)
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
