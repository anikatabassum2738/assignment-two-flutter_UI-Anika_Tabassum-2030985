import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(0xFF3B3EE8),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Total Balance",
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
              Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white70,
                size: 20,
              ),
            ],
          ),
          const SizedBox(height: 4.0),

          const Text(
            "\$8,945.32",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(color: Colors.white24, thickness: 1, height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Savings: \$5,500",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                "Last 30 days: +\$300 →",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
