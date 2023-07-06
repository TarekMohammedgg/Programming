import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/CardPage.dart';

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("back"),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.chevron_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.yellow[600],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(14.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
              children: const [
                Expanded(
                  flex: 1,
                  child: CardPage(),
                ),
                Expanded(flex: 1, child: CardPage()),
                Expanded(flex: 1, child: CardPage())
              ],
            ),
          )
        ],
      ),
    );
  }
}
