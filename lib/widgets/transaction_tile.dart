import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String price;
  final Color priceColor;
  final IconData icon;

  const TransactionTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.priceColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFF7F8FA),
          child: Icon(icon, color: Colors.black54, size: 18),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(color: Colors.grey, fontSize: 11),
        ),
        trailing: Text(
          price,
          style: TextStyle(
            color: priceColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
