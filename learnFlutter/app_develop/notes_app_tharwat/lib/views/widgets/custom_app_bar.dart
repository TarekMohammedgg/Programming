import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomAppBar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const SizedBox(
      height: 10 ,
    ) , 
    Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        // you can add mainAlignment.spaceBetween
        const Spacer(),

        CustomSearchIcon(icon: icon),
      ],
    )
      ],
    )
    ;
  }
}
