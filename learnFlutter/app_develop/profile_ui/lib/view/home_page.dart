import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: Center(
          child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/TarekAvatar.png")),
        ),
      ),
      const SliverToBoxAdapter(
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
      const SliverToBoxAdapter(
        child: Card(
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
      const SliverToBoxAdapter(
        child: Card(
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
      const SliverToBoxAdapter(
        child: Center(
          child: SizedBox(
            height: 30.0,
            width: 180,
            child: Divider(
              color: Colors.white,
            ),
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            "Project",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          delegate: SliverChildListDelegate((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Stack(children: [
                     Container(
                        child: const  ListTile(leading: Icon(Icons.check),),
                    ) , 
                    Positioned(
                        top:150,
                        child: Container(
                          width: 250,
                          height: 88,
                      color: Colors.green,
                      child: const Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text("tarek", style: TextStyle(fontSize: 34),) ]),
                    ))
                  ]),
                ),
              ))),
    ]);
  }
}
