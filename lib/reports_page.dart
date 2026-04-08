import 'package:flutter/material.dart';
import 'widgets/spending_card.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Monthly Spending Report",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Expenses (Last 30 days)",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const SizedBox(height: 8),
                const Text(
                  "-\$1270.00",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.arrow_upward, color: Colors.redAccent, size: 16),
                    Text(
                      " Up 12% from last month",
                      style: TextStyle(color: Colors.redAccent, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),
          const Text(
            "Spending Breakdown",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                children: const [
                  SpendingRow(
                    label: "Food & Drink",
                    amount: "\$450.00",
                    percentage: "35%",
                    color: Colors.redAccent,
                    progress: 0.35,
                  ),
                  SpendingRow(
                    label: "Shopping",
                    amount: "\$320.00",
                    percentage: "25%",
                    color: Color(0xFF5D5FEF),
                    progress: 0.25,
                  ),
                  SpendingRow(
                    label: "Housing",
                    amount: "\$280.00",
                    percentage: "22%",
                    color: Colors.orange,
                    progress: 0.22,
                  ),
                  SpendingRow(
                    label: "Transport",
                    amount: "\$150.00",
                    percentage: "12%",
                    color: Colors.green,
                    progress: 0.12,
                  ),
                  SpendingRow(
                    label: "Other",
                    amount: "\$70.00",
                    percentage: "6%",
                    color: Colors.blueGrey,
                    progress: 0.06,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
