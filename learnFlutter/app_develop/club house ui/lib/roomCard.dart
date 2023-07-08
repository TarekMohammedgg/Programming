import 'package:club_house_app/RoomStream.dart';
import 'package:club_house_app/widget/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/room.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          fullscreenDialog: true, builder: (_) => RoomStream(room: room))),
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${room.club} 🏠".toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        letterSpacing: 1.0),
                  ),
                  Text(
                    room.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Expanded(
                        child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          UserProfile(
                              imageURL: room.speakers[0].imageURL, size: 48.0),
                          Positioned(
                              left: 28.0,
                              top: 20.0,
                              child: UserProfile(
                                imageURL: room.speakers[1].imageURL,
                                size: 48.0,
                              ))
                        ],
                      ),
                    )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...room.speakers.map(
                                (e) => Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text:
                                            "${e.runtimeType} ${e.lastName}  "),
                                    const WidgetSpan(
                                        child: Icon(CupertinoIcons.speaker_3))
                                  ]),
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "${room.speakers.length + room.followerspeakers.length + room.others.length} "),
                                  const WidgetSpan(
                                      child: Icon(
                                    CupertinoIcons.person_fill,
                                    color: Colors.grey,
                                    size: 18,
                                  )),
                                  TextSpan(text: " / ${room.speakers.length} "),
                                  const WidgetSpan(
                                      child: Icon(
                                          CupertinoIcons.chat_bubble_fill,
                                          color: Colors.grey,
                                          size: 18))
                                ]),
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ]),
                      ),
                    ),
                  ])
                ],
              ))),
    );
  }
}
