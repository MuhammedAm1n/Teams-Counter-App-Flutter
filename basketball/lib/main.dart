import 'package:flutter/material.dart';

void main() {
  runApp(Basket());
}

class Basket extends StatefulWidget {
  Basket();

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int teamA = 0;
  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basket Ball'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    Text(
                      '$teamA',
                      style: TextStyle(color: Colors.black, fontSize: 140),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, minimumSize: Size(130, 50)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black, minimumSize: Size(130, 50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA+=3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black, minimumSize: Size(130, 50)),
                      ),
                    ),
                  ],
                ),
                Container(
                    //VirtecaL Divider
                    height: 407,
                    child: const VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    )),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    Text(
                      '$teamB',
                      style: TextStyle(color: Colors.black, fontSize: 140),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, minimumSize: Size(130, 50)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamB+=2;
                        });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black, minimumSize: Size(130, 50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                          teamB+=3;
                        });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black, minimumSize: Size(130, 50)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, minimumSize: Size(130, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
