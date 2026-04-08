import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color(0xFF7B7DF4),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 14,
                backgroundColor: const Color(0xFF3B3EE8),
                child: const Text(
                  "A",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome back,",
                  style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 10.0),
                ),
                Text(
                  "ANIKA TABASSUM",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Color(0xFF4A5568),
                size: 16.0,
              ),
            ),
            Positioned(
              right: 2.0,
              top: 2.0,
              child: Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 47, 47),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
