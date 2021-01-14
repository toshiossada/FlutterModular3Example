import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo with Modular',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ).modular(); //added this
  }
}
