import 'package:flutter/material.dart';

void main() {
  runApp( BasketballCounter());
}

class BasketballCounter extends StatefulWidget {
  const BasketballCounter({super.key});


  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  var pointsA = 0;
  var pointsB = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         title: Text('Points Counter', style: TextStyle(color: Colors.white)),
         backgroundColor: Colors.green,
       ),
        body:
        Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Team A', style: TextStyle(fontSize: 40)),
                            Text('$pointsA', style: TextStyle(fontSize: 170)),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pointsA ++ ;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: Size(150, 50),
                              ),
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pointsA = pointsA+2 ;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: Size(150, 50),
                              ),

                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pointsA= pointsA +3;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: Size(150, 50),
                              ),
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 460,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Team B', style: TextStyle(fontSize: 40)),
                            Text('$pointsB', style: TextStyle(fontSize: 170)),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pointsB ++ ;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: Size(150, 50),
                              ),
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),

                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pointsB = pointsB + 2;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: Size(150, 50),
                              ),
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pointsB = pointsB +3 ;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: Size(150, 50),
                              ),
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                   ],
                 ),

                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      pointsA = 0;
                      pointsB = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    minimumSize: Size(200, 50),
                  ),
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
               SizedBox(
                 height: 50,)
                ],

                  )));
          }}