import 'package:flutter/material.dart';
import '../widgets/header_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomHeader(), // 🔥 reusable header

            Expanded(child: Center(child: Text("Main Content",style: TextStyle(fontWeight:FontWeight.bold),))),
          ],
        ),
      ),
    );
  }
}
