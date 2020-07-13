import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:philosofya/screen/philo_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new FirstScreen());
  });
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhiloApp(),
    );
  }
}
