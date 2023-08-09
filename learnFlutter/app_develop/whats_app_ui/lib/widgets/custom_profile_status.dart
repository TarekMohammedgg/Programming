import 'package:flutter/material.dart';
import 'package:whats_app_ui/widgets/user_profile.dart';

class CustomProfileStatus extends StatelessWidget {
  final String title  ; 
  const CustomProfileStatus({super.key ,required this.title});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: EdgeInsets.zero,
      leading:const  CustomAvatar(),
      title:  Text(title),
      subtitle:  const Text("yesterday" , style: TextStyle(color:  Color.fromARGB(255, 135, 161, 183)),),
    );
  }
}