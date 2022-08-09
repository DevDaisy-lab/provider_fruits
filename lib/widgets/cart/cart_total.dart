import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../../models/cart.dart';

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme5 = Theme.of(context).textTheme.headline5;
    var textTheme4 = Theme.of(context).textTheme.headline4;
    var textTheme3 = Theme.of(context).textTheme.headline3;

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
                  Text('\$${cart.totalPrice}', style: textTheme5),
            ),
            const SizedBox(width: 25),
            Platform.isIOS
                ? CupertinoButton(
                    child: Text(
                      'Buy',
                      style: textTheme3,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  )
                : FlatButton(
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            ' Buying not supported yet',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                    color: Colors.white,
                    child: Text(
                      'Buy',
                      style: textTheme4,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
