import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../models/lis.dart';
import 'add_button.dart';

class FruitItem extends StatelessWidget {
  final int index;

  FruitItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = Provider.of<ListModel>(context);
    var fruit = list.getByPosition(index);
    var textTheme2 = Theme.of(context).textTheme.headline2;
    var textTheme3 = Theme.of(context).textTheme.headline3;

    return SizedBox(
      height: 90,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Card(
          elevation: 0,
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                child: Image.asset(
                  fruit.image,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 80,
                child: Text(
                  fruit.name,
                  style: Platform.isIOS ? textTheme3 : textTheme2,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              AddButton(fruit: fruit),
            ],
          ),
        ),
      ),
    );
  }
}
