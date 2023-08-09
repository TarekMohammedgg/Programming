import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: 120,
        floating: true,
        pinned: true,
        backgroundColor: const Color(0xff232D36),
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xff6E7780),
              fontFamily: "ComicNeue-Italic",
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.photo_camera,
                color: Color(0xff6E7780),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color(0xff6E7780),
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xff6E7780),
            ),
          ),
        ],
        bottom: const TabBar(
          // isScrollable: true,
          labelColor: Color(0xff115E58),
          unselectedLabelColor: Color(0xff6E7780),
          tabs: [
            Tab(text: "Chats"),
            Tab(
              text: "Updates",
            ),
            Tab(text: "Calls"),
          ],
        ));
  }
}
