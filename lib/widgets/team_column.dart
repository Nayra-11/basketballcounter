import 'package:flutter/material.dart';

class TeamColumn extends StatelessWidget {
  final String teamName;
  final int points;
  final void Function(int) onAddPoint;

  const TeamColumn({
    super.key,
    required this.teamName,
    required this.points,
    required this.onAddPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(teamName, style: const TextStyle(fontSize: 40)),
          Text('$points', style: const TextStyle(fontSize: 170)),
          ...[1, 2, 3].map(
                (value) => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: () => onAddPoint(value),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(150, 50),
                ),
                child: Text(
                  'Add $value Point',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
