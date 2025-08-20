import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/widget/navbar.dart';
import 'package:latihan1_11pplg2/widget/textInfo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // biar rapi ke kiri
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.deepPurple.shade100,
                child: const Icon(Icons.person, size: 50, color: Colors.deepPurple),
              ),
            ),
            const SizedBox(height: 20),
            TextInfo(label: 'Username', info: "Myraeyrii"),
            const SizedBox(height: 12),
            TextInfo(label: "TTD", info: "25 Februari 2025"),
            const SizedBox(height: 12),
            TextInfo(label: "Email", info: "Myraisadora7@gmail.com"),
            const SizedBox(height: 12),
            TextInfo(label: "No Telp", info: "0822 5769 7764"),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}