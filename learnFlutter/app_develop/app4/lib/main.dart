import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 25;
  var btncolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number++;
              btncolor = Colors.red;
            });
          },
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.check),
        ),
        backgroundColor: Colors.green,
        body: SafeArea(
            child: Column(
          children: [
            Row(children: [
              Container(
                width: 500,
                height: 150,
                color: Colors.lightBlue,
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            Text(
              "$number",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    number++;
                    btncolor = Colors.red;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: btncolor,
                  size: 35,
                ))
          ],
        )),
      ),
    ));
  }
}
