import 'package:flutter/material.dart';
import 'views/basketball_counter_view.dart';

void main() {
  runApp(const BasketballCounter());
}

class BasketballCounter extends StatelessWidget {
  const BasketballCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballCounterView(),
    );
  }
}
