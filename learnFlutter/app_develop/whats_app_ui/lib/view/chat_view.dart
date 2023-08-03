
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';
import '../widgets/user_profile.dart';
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return   SliverList.builder(
                        itemCount: 14,
                        itemBuilder: (context, index) => ListTile(
                              leading: const CustomAvatar(),
                              title:
                                  Text(names[Random().nextInt(names.length)]),
                              trailing: Text(
                                  DateFormat('d/M/yy').format(DateTime.now())),
                              subtitle: const Text("السلام عليكم "),
                            )) ; 
  }
}