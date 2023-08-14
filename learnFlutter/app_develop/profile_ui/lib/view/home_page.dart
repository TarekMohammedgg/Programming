import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
       Center(
        child: CircleAvatar(
            radius: 70, backgroundImage: AssetImage("images/TarekAvatar.png")),
      ),
       SliverToBoxAdapter(
          child: Center(
            child: Text(
                  "Tarek Mohammed",
                  style: TextStyle(
              fontFamily: "Pacifico",
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white),
                ),
          )),
       SliverToBoxAdapter(
        child:  Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListTile(
              leading: Icon(
                Icons.email,
              ),
              title: Text(
                "tarekmohammedgg@gmail.com",
                style: TextStyle(fontSize: 20, fontFamily: "source sans 3"),
              )),
        ),
      ),
       SliverToBoxAdapter(
        child:  Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: ListTile(
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                "+20 11 02 14 68 96",
                style: TextStyle(fontSize: 20, fontFamily: "source sans 3"),
              )),
        ),
      ),
       SliverToBoxAdapter(
        child: Center(
          child: SizedBox(
            height: 20.0,
            width: 180,
            child: Divider(
              color: Colors.white,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(child: Text("Project" , style: TextStyle(color: Colors.white , fontSize: 25),),)
    ]);
  }
}
