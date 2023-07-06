import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(23))),
        height: 20,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration:
                              InputDecoration.collapsed(hintText: "TiTle"),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.pin)),
                    ]),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  maxLines: 3,
                  decoration: InputDecoration.collapsed(hintText: "your note "),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.image)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.check_box)),
                    TextButton(
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.paintbrush,
                          color: Colors.black,
                        ))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
