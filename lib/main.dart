import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/balance_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                Header(),
                SizedBox(height: 25),
                BalanceCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
