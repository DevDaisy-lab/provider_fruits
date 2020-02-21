import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './style/my_app_theme.dart';

import './models/cart.dart';
import './models/list.dart';

import './screens/cart.dart';
import './screens/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///The MultiProvider allows conveniently providing multiple objects.
    return MultiProvider(
      providers: [
        ///In this an example ListModel never changes,
        /// so a simple Provider is sufficient.
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
