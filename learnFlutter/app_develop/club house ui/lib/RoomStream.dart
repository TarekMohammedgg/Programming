import 'dart:math';

import 'package:club_house_app/RoomUserProfile.dart';
import 'package:club_house_app/profile.dart';
import 'package:club_house_app/widget/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/data.dart';
import 'models/room.dart';

class RoomStream extends StatelessWidget {
  final Room room;
  const RoomStream({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                elevation: 0,
                leadingWidth: 130,
                leading: TextButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    style: TextButton.styleFrom(primary: Colors.black),
                    icon: const Icon(CupertinoIcons.chevron_down),
                    label: const Text("hallway")),
                actions: [
                  IconButton(
                      icon: const Icon(CupertinoIcons.doc, size: 28),
                      onPressed: () {}),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          UserProfile(imageURL: currentUser.imageURL, size: 34),
                    ),
                  )
                ],
              )
            ];
          },
          body: Container(
            padding: const EdgeInsets.all(20.0),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(text: "${room.club} "),
                            const WidgetSpan(child: Icon(CupertinoIcons.home))
                          ])),
                          const Icon(CupertinoIcons.ellipsis)
                        ],
                      ),
                      Text(
                        room.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(14.0),
                  sliver: SliverGrid.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8.0,
                      children: room.speakers
                          .map((e) => RoomUserProfile(
                              imageURL: e.imageURL,
                              name: e.firstName,
                              size: 66,
                              isNew: Random().nextBool(),
                              isMuted: Random().nextBool()))
                          .toList()),
                ),
                SliverToBoxAdapter(
                    child: Text(
                  "Followed by Speakers :",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                )),
                SliverPadding(
                  padding: const EdgeInsets.all(14.0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.7,
                    children: room.followerspeakers
                        .map((e) => RoomUserProfile(
                            imageURL: e.imageURL,
                            name: e.firstName,
                            size: 66,
                            isNew: Random().nextBool()))
                        .toList(),
                  ),
                ),
                SliverToBoxAdapter(
                    child: Text(
                  "Others in The Room :",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                )),
                SliverPadding(
                  padding: const EdgeInsets.all(14.0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.7,
                    children: room.others
                        .map((e) => RoomUserProfile(
                            imageURL: e.imageURL,
                            name: e.firstName,
                            size: 66,
                            isNew: Random().nextBool()))
                        .toList(),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.only(bottom: 50))
              ],
            ),
          )),
      bottomSheet: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(14),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: Colors.grey[200]),
                child: const Text(
                  "👋 Leave Room",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.red),
                )),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(CupertinoIcons.add, size: 30),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      CupertinoIcons.hand_raised,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
