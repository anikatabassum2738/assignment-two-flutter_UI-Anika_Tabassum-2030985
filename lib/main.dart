import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/balance_card.dart';
import 'widgets/action_button.dart';
import 'widgets/transaction_tile.dart';

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Header(),
                  const SizedBox(height: 20),
                  const BalanceCard(),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ActionButton(
                          icon: Icons.swap_vert_rounded,
                          label: "Transfer",
                        ),
                      ),

                      const SizedBox(width: 12),
                      Expanded(
                        child: ActionButton(
                          icon: Icons.account_balance_wallet_outlined,
                          label: "Pay Bills",
                        ),
                      ),
                      const SizedBox(width: 12),

                      Expanded(
                        child: ActionButton(
                          icon: Icons.link_rounded,
                          label: "Invest",
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Recent Transactions",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1A1D1E),
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                color: Color(0xFF5D5FEF),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const TransactionTile(
                          title: "Netflix Subscription",
                          subTitle: "Entertainment • Today",
                          price: "\$19.99",
                          priceColor: Color(0xFFFF5C5C),
                          icon: Icons.movie_outlined,
                        ),
                        const TransactionTile(
                          title: "Coffee Shop",
                          subTitle: "Food & Drink • Today",
                          price: "\$4.50",
                          priceColor: Color(0xFFFF5C5C),
                          icon: Icons.coffee_outlined,
                        ),
                        const TransactionTile(
                          title: "Salary Deposit",
                          subTitle: "Income • Yesterday",
                          price: "+\$3500.00",
                          priceColor: Color(0xFF32BC71),
                          icon: Icons.wallet_outlined,
                        ),
                        const TransactionTile(
                          title: "Grocery Store",
                          subTitle: "Shopping • Yesterday",
                          price: "\$55.80",
                          priceColor: Color(0xFFFF5C5C),
                          icon: Icons.shopping_cart_outlined,
                        ),
                        const TransactionTile(
                          title: "Amazon Purchase",
                          subTitle: "Shopping • 2 days ago",
                          price: "\$120.45",
                          priceColor: Color(0xFFFF5C5C),
                          icon: Icons.shopping_bag_outlined,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
