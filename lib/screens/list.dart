import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/list/fruit_item.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme5 = Theme.of(context).textTheme.headline5;
    final myAppBar = AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'The List of Fruits',
        style: textTheme5,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () => Navigator.pushNamed(context, '/cart'),
        ),
      ],
    );
    final cupertinoAppbar = CupertinoNavigationBar(
      backgroundColor: CupertinoColors.systemGreen,
      middle: const Text(
        'The List of Fruits',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      trailing: GestureDetector(
        child: const Icon(
          CupertinoIcons.shopping_cart,
          color: Colors.white,
        ),
        onTap: () => Navigator.pushNamed(context, '/cart'),
      ),
    );
    final pageBody = CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 12,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => FruitItem(index),
          ),
        ),
      ],
    );

    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: cupertinoAppbar,
            child: pageBody,
          )
        : Scaffold(
            body: pageBody,
            appBar: myAppBar,
          );
  }
}
