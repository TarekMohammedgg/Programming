import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whats_app_ui/widgets/user_profile.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';

class CallsView extends StatefulWidget {
  const CallsView({super.key});

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  var icons = Icons.arrow_outward_sharp ; 
  var colors = Colors.green ; 

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomButton()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 25, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Recent",
                  style:
                      TextStyle(fontSize: 16, fontFamily: "ComicNeue-Italic"),
                ),
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
              [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      
                      itemCount: 14,
                      itemBuilder:(context , index )=>  GestureDetector(
                                onTap: (){},
                                child: ListTile(
                      leading: const CustomAvatar(),
                      title: Text(names[Random().nextInt(names.length)]),
                      subtitle: Text.rich(TextSpan(children: [
                         WidgetSpan(
                            child: Icon(
                          icons, 
                          color: colors,
                        )),
                        TextSpan(text: DateFormat('MMMM d , h:mm a').format(DateTime.now()))
                      ])),
                      trailing: IconButton(
                        onPressed: () {
                            setState(() {
                              icons = Icons.call_received ; 
                              if (icons== Icons.call_received){
                                colors = Colors.red ; 
                              }
                              else {
                                colors= Colors.green ; 
                              }
                            });
                              
                        },
                        icon: const Icon(Icons.phone),
                        color: const Color.fromARGB(255, 27, 132, 123),
                      ),
                    ),
                              ) ),
                  )


              ]
            ) , 
    )],
    );
  }
}
