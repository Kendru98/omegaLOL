import 'package:flutter/material.dart';
import 'package:omega_lul/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Omega LOL',
      home: FirstPage(),
    );
  }
}
