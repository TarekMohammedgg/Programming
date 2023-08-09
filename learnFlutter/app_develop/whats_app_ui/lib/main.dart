import 'package:flutter/material.dart';
import 'package:whats_app_ui/view/calls_view.dart';
import 'package:whats_app_ui/view/chat_view.dart';
import 'package:whats_app_ui/view/updates_view.dart';
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
      length: 3,
      child: SafeArea(
          child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomAppbar(),
            SliverFillRemaining(
                child: TabBarView(children: <Widget>[
              ChatView(),
              UpdatesView(),
              CallsView(),
            ])),
          ],
        ),
      )),
    );
  }
}
