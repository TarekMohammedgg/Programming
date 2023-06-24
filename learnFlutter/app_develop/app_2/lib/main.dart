import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const AppbarText(),
              backgroundColor: Colors.lightBlue[300],
              leading: const Icon(Icons.app_shortcut),
            ),
            body: SafeArea(
              child: Column(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ContainerTest(text: "hi", cc: Colors.red),
                  const SizedBox(
                    height: 5.0,
                  ),
                  ContainerTest(text: "I am Tarek ", cc: Colors.black),
                  const SizedBox(
                    height: 5.0,
                  ),
                  ContainerTest(text: "GoodBye"),
                ],
              ),
            )));
  }
}

class AppbarText extends StatelessWidget {
  const AppbarText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Application Test Two ");
  }
}

class ContainerTest extends StatelessWidget {
  final text;
  var color;
  ContainerTest({super.key, this.text, var cc}) {
    if (cc == null) {
      color = Colors.lightBlue[200];
    } else {
      color = cc;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: color,
      child: Text(text),
    );
  }
}
