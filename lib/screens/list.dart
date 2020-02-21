import 'package:flutter/material.dart';

import '../widgets/list/my_fruit_list.dart';
import '../widgets/list/my_app_bar.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MyAppBar(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => MyFruitList(index)),
          ),
        ],
      ),
    );
  }
}
