
import 'package:flutter/material.dart';
import 'dart:math';

import '../constants.dart';
class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(images[Random().nextInt(images.length)]));
  }
}