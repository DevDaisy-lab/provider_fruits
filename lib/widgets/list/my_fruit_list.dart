import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/list.dart';
import 'add_button.dart';

class MyFruitList extends StatelessWidget {
  final int index;

  MyFruitList(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = Provider.of<ListModel>(context);
    var fruit = list.getByPosition(index);
    var textTheme = Theme.of(context).textTheme.title;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 100,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                child: Image.asset(fruit.image),
              ),
            ),
            SizedBox(width: 25),
            Expanded(
              child: Text(fruit.name, style: textTheme),
            ),
            SizedBox(width: 25),
            AddButton(fruit: fruit),
          ],
        ),
      ),
    );
  }
}
