

import 'package:flutter/material.dart';

import 'package:whats_app_ui/view/chat_view.dart';


void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark, canvasColor: const Color(0xff232D36)),
        home:  DefaultTabController(
          length: 3,
          child: SafeArea(
            child: Scaffold(
              body: TabBarView(children: [
                CustomScrollView(
                  slivers: [
                     SliverAppBar(
                  
                      backgroundColor: const Color(0xff232D36) , 
                      floating: true,
                     pinned: true ,
                     title: const Text(
              "WhatsApp",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff6E7780),
                  fontFamily: "ComicNeue-Italic",
                  fontStyle: FontStyle.italic , fontWeight: FontWeight.bold),
            ),
                      actions: [
              IconButton(
                  onPressed: (){},
                  icon:  const Icon(
                    Icons.photo_camera,
                    color: Color(0xff6E7780),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xff6E7780),
                  )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Color(0xff6E7780),
                ),
              ) , 
            
            ],

                      bottom: const TabBar(
                        // isScrollable: true,
                        labelColor: Color(0xff115E58),
                        unselectedLabelColor: Color(0xff47525A),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(text: "Chats"),
                          Tab(
                            text: "Updates",
                          ),
                          Tab(text: "Calls"),
                        ],
                      ),
                      expandedHeight: 120,
                    ),
                     
                    const ChatView() , 
                  
                  ],
                ),
                
              ]),
              floatingActionButton: FloatingActionButton(onPressed: (){}  , 
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
                child:
                 const Icon(Icons.message) , 

              
               ),
            ),
          ),
        ));
  }
}




