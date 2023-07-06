import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CardPage.dart';
import 'FullPage.dart';
import 'GridView.dart';

void main() {
  runApp(const MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const FullPage() )),
          child: const Icon(
            CupertinoIcons.add,
            color: Colors.black,
          ),
        ),
        drawer: const NavDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.yellow[600],
                title: const Text("Notes"),
                actions: [
                  IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GridViewApp())),
                      icon: const Icon(Icons.grid_3x3))
                ],
              ),
            ];
          },
          body: const CardPage(),
        ));
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          ListView(padding: const EdgeInsets.all(0), children: const <Widget>[
        DrawerHeader(
          child: Text("Menu"),
        ),
        ListTile(
          leading: Icon(Icons.input),
          title: Text("welcome "),
        )
      ]),
    );
  }
}
