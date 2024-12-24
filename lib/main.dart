import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void reset() {
    teamAPoints = 0;

    teamBPoints = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            " Points Counter ",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32, color: Colors.blue),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 150, color: Colors.blue),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                            //print("$teamAPoints");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(130, 40)),
                        child: const Text(
                          " Add 1 Point ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                            //print("$teamAPoints");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(130, 40)),
                        child: const Text(
                          " Add 2 Point ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                            //print("$teamAPoints");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(130, 40)),
                        child: const Text(
                          " Add 3 Point ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    const Spacer(
                      flex: 30,
                    )
                  ]),
                ),
                const SizedBox(
                  height: 380,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 32, color: Colors.red),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 150, color: Colors.red),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                            //print('$teamBPoints');
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(130, 40)),
                        child: const Text(
                          " Add 1 Point ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                            //print('$teamBPoints');
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(130, 40)),
                        child: const Text(
                          " Add 2 Point ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                            // print('$teamBPoints');
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: const Size(130, 40)),
                        child: const Text(
                          " Add 3 Point ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                    const Spacer(
                      flex: 30,
                    )
                  ]),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    fixedSize: const Size(130, 50)),
                onPressed: () {
                  setState(() {
                    reset();
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
