import 'package:flutter/material.dart';
import '../widgets/team_column.dart';
import '../widgets/reset_button.dart';

class BasketballCounterView extends StatefulWidget {
  const BasketballCounterView({super.key});

  @override
  State<BasketballCounterView> createState() => _BasketballCounterViewState();
}

class _BasketballCounterViewState extends State<BasketballCounterView> {
  int pointsA = 0;
  int pointsB = 0;

  void incrementPointsA(int value) {
    setState(() => pointsA += value);
  }

  void incrementPointsB(int value) {
    setState(() => pointsB += value);
  }

  void resetPoints() {
    setState(() {
      pointsA = 0;
      pointsB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TeamColumn(
                        teamName: 'Team A',
                        points: pointsA,
                        onAddPoint: incrementPointsA,
                      ),
                      const SizedBox(
                        height: 460,
                        child: VerticalDivider(color: Colors.grey, thickness: 1),
                      ),
                      TeamColumn(
                        teamName: 'Team B',
                        points: pointsB,
                        onAddPoint: incrementPointsB,
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                  ResetButton(onReset: resetPoints),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
