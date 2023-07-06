import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String imageURL;
  final double size;
  const UserProfile({super.key, required this.imageURL, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(size / 2 - size / 10),
        child: Image.network(
          imageURL,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ));
  }
}
