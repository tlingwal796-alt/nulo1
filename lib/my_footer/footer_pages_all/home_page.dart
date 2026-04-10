import 'package:flutter/material.dart';
import 'package:student_help/my_colors/main_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Container(child: Center(child: Text("Home Page"))),
    );
  }
}
