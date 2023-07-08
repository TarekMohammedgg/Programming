
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/avatar.jpeg"),
                  ),
                ),
                const Text(
                  "Hi, I'm Tarek Mohammed ",
                  style: TextStyle(fontSize: 18, fontFamily: "Raleway"),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.twitter,
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                      Icon(
                        FontAwesomeIcons.facebook,
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                      ),
                    ]),
                const Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      " tarekmohammedgg@gmail.com",
                      style: TextStyle(fontSize: 18, fontFamily: "Raleway"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
