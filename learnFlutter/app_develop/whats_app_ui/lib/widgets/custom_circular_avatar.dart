
import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
class CustomcircularAvatar extends StatelessWidget {
  const CustomcircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
           Column(
            children: [
             const  SizedBox(
                height: 15,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  images[Random().nextInt(images.length)],
                ),
              ),
              const Text("###")
            ],
          ),
          Positioned(
              top: 70,
              left: 60,
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
