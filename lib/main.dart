import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/balance_card.dart';
import 'widgets/action_button.dart';

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
              children: [
                const Header(),
                const SizedBox(height: 25),
                const BalanceCard(),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ActionButton(
                        icon: Icons.swap_vert_rounded,
                        label: "Transfer",
                      ),
                    ),

                    const SizedBox(width: 15),
                    Expanded(
                      child: ActionButton(
                        icon: Icons.account_balance_wallet_outlined,
                        label: "Pay Bills",
                      ),
                    ),
                    const SizedBox(width: 15),

                    Expanded(
                      child: ActionButton(
                        icon: Icons.link_rounded,
                        label: "Invest",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
