import 'package:amik_learn/onboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'AmikLearn',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const onBoard()),
            );
          },
        ),
      ),
    );
  }
}
