import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './style/my_app_theme.dart';

import './models/cart_model.dart';
import './models/list_model.dart';

import './screens/cart_screen.dart';
import './screens/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///The MultiProvider allows conveniently providing multiple objects.
    return MultiProvider(
      providers: [
        ///In this example ListModel never changes,
        /// so a simple Provider is sufficient here.
        Provider(create: (context) => ListModel()),

        ///The CartModel is implemented as a ChangeNotifier,
        /// which calls for the use of ChangeNotifierProvider.
        /// More over CartModel depends on ListModel, so
        /// a ProxyProvider is needed.
        ChangeNotifierProxyProvider<ListModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, list, cart) {
            cart.list = list;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management Provider',
        theme: myAppTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyList(),
          '/cart': (context) => MyCart(),
        },
      ),
    );
  }
}
