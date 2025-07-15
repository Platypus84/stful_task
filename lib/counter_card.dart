import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  const CounterCard({super.key});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int count = 0;

  countUp() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $count'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countUp();
                });
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
