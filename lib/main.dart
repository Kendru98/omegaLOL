import 'package:flutter/material.dart';
import 'package:omega_lul/pages/firstpage.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MatchesProvider(),
        )
      ],
      child: const MaterialApp(
        title: 'Omega LOL',
        home: FirstPage(),
      ),
    );
  }
}
