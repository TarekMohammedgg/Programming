import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/TarekAvatar.png"),
            ),
            const Text("Tarek Mohammed",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Pacifico",
                    fontWeight: FontWeight.bold)),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2.5,
                  fontFamily: "source sans 3"),
            ),
            SizedBox(
              height: 20.0,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "+02 123 456 01",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                        fontFamily: "source sans 3"),
                  )),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "tarekmohammedgg@gmail.com",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                        fontFamily: "source sans 3"),
                  )),
            ),
            // const SizedBox(height: 20,)  ,
            Text(
              "show my projects ",
              style: TextStyle(color: Colors.teal.shade100),
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              Icons.arrow_downward,
              color: Colors.teal.shade900,
            )
          ],
        ),
      ),
    );
  }
}

class ShowProjects extends StatelessWidget {
  const ShowProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  child: const MiCard(),
                ),
              ),
              SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  delegate: SliverChildBuilderDelegate(
                    (contexxt, index) => const Card(
                      color: Colors.teal,
                      child: ListTile(
                        leading: Icon(Icons.add),
                        title: Text("the first project "),
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
