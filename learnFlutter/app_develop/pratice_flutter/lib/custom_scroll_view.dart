import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  const CustomScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1682686581295-7364cabf5511?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
                )),
          ),
          SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: Colors.teal,
                );
              } , childCount: 5 )),
        ],
      ),
    );
  }
}
