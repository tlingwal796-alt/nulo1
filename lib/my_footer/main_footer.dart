import 'package:flutter/material.dart';
import 'package:student_help/my_footer/footer_pages_all/home_page.dart';

class MainFooter extends StatefulWidget {
  const MainFooter({super.key});

  @override
  State<MainFooter> createState() => _MainFooterState();
}

class _MainFooterState extends State<MainFooter> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    // NOTE: For Tanishq - you can add multiple pages here inside this List
    Center(child: Text("Second Page")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: const [
          //NOTE: Add here if required
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.baby_changing_station),
            label: "Second",
          ),
        ],
      ),
    );
  }
}

// Please also mark comments wherever you will make a change in the code.
