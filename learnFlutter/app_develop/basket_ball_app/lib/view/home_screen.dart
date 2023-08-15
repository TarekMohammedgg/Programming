import 'package:basket_ball_app/constants.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Team A",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  teamA.toString(),
                  style: const TextStyle(
                      fontSize: 200, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        foregroundColor: Colors.black),
                    child: const Text("Add 1 point")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        foregroundColor: Colors.black),
                    child: const Text("Add 2 point")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        foregroundColor: Colors.black),
                    child: const Text("Add 3 point")),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 450,
              child: VerticalDivider(
                width: 20,
                color: Colors.black.withOpacity(0.2),
                thickness: 2,
              ),
            ),
            Column(
              children: [
                const Text(
                  "Team B",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  teamB.toString(),
                  style: const TextStyle(
                      fontSize: 200, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        foregroundColor: Colors.black),
                    child: const Text("Add 1 point")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        foregroundColor: Colors.black),
                    child: const Text("Add 2 point")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[300],
                        foregroundColor: Colors.black),
                    child: const Text("Add 3 point")),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                teamA = teamB = 0;
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[300],
                foregroundColor: Colors.black),
            child: const Text("Reset"))
      ],
    );
  }
}
