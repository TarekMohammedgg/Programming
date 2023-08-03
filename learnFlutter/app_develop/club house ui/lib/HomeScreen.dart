
import 'package:club_house_app/profile.dart';
import 'package:club_house_app/widget/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RoomCard.dart';
import 'models/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BarOfApp(),
    );
  }
}

class BarOfApp extends StatelessWidget {
  const BarOfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          
          return <Widget>[
            SliverAppBar(
              floating: true ,
              elevation: 0,
              leading: IconButton(
                  icon: const Icon(Icons.search, size: 28), onPressed: () {}),
              actions: [
                IconButton(
                    icon: const Icon(CupertinoIcons.envelope_open),
                    onPressed: () {}),
                IconButton(
                    icon: const Icon(CupertinoIcons.calendar, size: 28),
                    onPressed: () {}),
                IconButton(
                    icon: const Icon(CupertinoIcons.bell, size: 28),
                    onPressed: () {}),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        UserProfile(imageURL: currentUser.imageURL, size: 34),
                  ),
                )
              ],
            )
          ];
        },
        body: Stack(
          alignment: Alignment.center,
          children: [
            ListView(
              children: [
                ...roomList.map((e) => RoomCard(room: e)),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor
                    ])),
              ),
            ),
            Positioned(
              bottom: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.add),
                label: const Text(
                  "Start a room",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(15),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
          ],
        ));
  }
}
