import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullPage extends StatelessWidget {
  const FullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers :[Material(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextField(
                        decoration: InputDecoration.collapsed(hintText: "TiTle "),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(CupertinoIcons.pin))
                    ],
                  ),
                  const TextField(
                    maxLines: 15,
                    decoration:
                        InputDecoration.collapsed(hintText: "write your note  "),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.all(6.0),
                    child: SliverToBoxAdapter(
                      child: Row(
                        children: [
                          SliverToBoxAdapter(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.image),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.check_box),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    
        
      ),] 
    );
  }
}

