import 'package:flutter/material.dart';
import 'package:student_help/my_buttons/button_elevated.dart';
import 'package:student_help/my_footer/main_footer.dart';
import 'package:student_help/my_header/main_header.dart';
import 'package:student_help/my_header/main_page.dart';
import 'package:student_help/pages/my_dashboard/main_home_dashboard.dart';
import 'package:student_help/pages/my_dashboard/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false, // removes the debug banner
      
      title: 'Student Help',
      theme: ThemeData(primarySwatch: Colors.grey),
      // for testing the button!
      home:MainPage()//this pages is created in header folder
    );
  }
}
                         // NOTED

// You can Use AI if needed but please do not share the whole code or copy
// Fully from the AI it causes code to be very complicated to understand sometimes

// GOOD LUCK :)