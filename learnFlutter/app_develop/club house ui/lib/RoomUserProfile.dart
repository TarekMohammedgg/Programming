import 'package:club_house_app/widget/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageURL;
  final String name;
  final double size;
  final bool isMuted;
  final bool isNew;
  const RoomUserProfile({
    super.key,
    required this.imageURL,
    required this.name,
    this.size = 20,
    this.isMuted = false,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: UserProfile(imageURL: imageURL, size: size),
          ),
          if (isNew)
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      )
                    ]),
                child: const Text(
                  "🎉",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          if (isMuted)
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      )
                    ]),
                child: const Icon(
                  CupertinoIcons.mic_slash_fill,
                  size: 20,
                ),
              ),
            )
        ]),
        Flexible(
            child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}
