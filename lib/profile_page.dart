import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  const Spacer(flex: 1),

                  const Text(
                    "User Profile",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  // The Profile Avatar with a soft shadow
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF5D5FEF),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFF5D5FEF),
                      child: Text(
                        "AT",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                  ),

                  const Spacer(flex: 1),

                  _buildSimpleBox("Name", "ANIKA TABASSUM"),
                  _buildSimpleBox("Student ID", "2030985"),
                  _buildSimpleBox("Email", "2030985@iub.edu.bd"),
                  _buildSimpleBox(
                    "Bio / Story",
                    "Focusing on my final year, balancing studies with building side projects. Financial health is key!",
                    isBio: true,
                  ),

                  const Spacer(flex: 2),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSimpleBox(String label, String value, {bool isBio = false}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: isBio ? 13 : 15,
              fontWeight: isBio ? FontWeight.normal : FontWeight.bold,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
