import 'package:flutter/material.dart';

import 'core/dependency_injection/di.dart';

void main() {
  configureDependencies();
  runApp(const ElevateTaskCycle2());
}

class ElevateTaskCycle2 extends StatelessWidget {
  const ElevateTaskCycle2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elevate Task Cycle 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Elevate Task Cycle 2'),
        ),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}