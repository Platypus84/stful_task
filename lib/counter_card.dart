import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  int _count = 0;
  num _sumCount = 0;

  CounterCard({super.key});

  @override
  State<CounterCard> createState() => _CounterCardState();

  get cardCount {
    return _count;
  }
}

class _CounterCardState extends State<CounterCard> {
  countUp() {
    widget._count++;
  }

  // sumCounter(count) {
  //   widget._sumCount += count;
  //   print('sumCount ist ${widget._sumCount}');
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: ${widget._count}'),
            ElevatedButton(
              onPressed: () {
                widget._sumCount++;
                setState(() {
                  countUp();

                  print('sumCount ist ${widget._sumCount}');
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

// class SumCount extends StatefulWidget {
//   const SumCount({super.key});

//   @override
//   State<SumCount> createState() => _SumCountState();
// }

// class _SumCountState extends State<SumCount> {
//   int sumCount = 0;
//   sumCounter() {
//     sumCount++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
