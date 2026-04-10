import 'package:flutter/material.dart';
import 'package:student_help/my_footer/footer_pages_all/home_page.dart';
import 'package:student_help/my_header/main_header.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:SafeArea(
        child:Column(
          children: [
            MainHeader(),
            Expanded(child: HomePage(),)

          ],)
      )
    );
  }
}