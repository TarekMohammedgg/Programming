import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.primaries[Random().nextInt(Colors.accents.length)]),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text("First Note ",
                style: TextStyle(color: Colors.black, fontSize: 26)),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "I am a Flutter Developer",
                style: TextStyle(color: Colors.black38, fontSize: 18),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  // CupertinoIcons.trash,
                  FontAwesomeIcons.trash
                  ,
                  color: Colors.black,
                  size: 24,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              "4 , july , 2023 ",
              style: TextStyle(color: Colors.black38, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
