import 'package:flutter/material.dart';

class CustomNoteAppBar extends StatelessWidget {
  const CustomNoteAppBar({super.key , required this.textnote});
 final  String textnote ; 
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(textnote,
            style:const  TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ],
    );
  }
}
