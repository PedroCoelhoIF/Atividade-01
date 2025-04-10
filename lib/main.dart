import 'package:exemploentrada/pag1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: Pag1(),
    );
  }
}
