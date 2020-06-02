import 'package:flutter/material.dart';
import 'package:philosofya/philo_app.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhiloApp(),
    );
  }
}
