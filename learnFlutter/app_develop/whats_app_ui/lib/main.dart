import 'package:flutter/material.dart';
import 'package:whats_app_ui/view/calls_view.dart';
import 'package:whats_app_ui/view/chat_view.dart';
import 'package:whats_app_ui/widgets/custom_app_bar.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: SafeArea(
          child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomAppbar(),
            SliverFillRemaining(
                child: TabBarView(children: <Widget>[
                  
                  
                  // ChatView(),
                  
                  //  CallsView() ,
                    UpdatesView() , 

                   
                
                
                
                ])),
          ],
        ),
      )),
    );
  }
}


class UpdatesView extends StatelessWidget {
  const UpdatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
        slivers: [

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(children: [
                  Text("Status" , style: TextStyle(color: Colors.white , fontSize: 24 , fontFamily: "ComicNeue-Italic" ),)
                ],),
              ),
            )


        ],
    ); 
  }
}