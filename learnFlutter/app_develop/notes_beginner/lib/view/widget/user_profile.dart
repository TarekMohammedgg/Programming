import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String imageURL;

  const UserProfile({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
          
          borderRadius: BorderRadius.circular(14),
          child: Image.network(
            imageURL,
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
