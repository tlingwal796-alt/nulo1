import 'package:flutter/material.dart';
import 'package:student_help/my_colors/main_colors.dart';
import 'package:student_help/pages/my_dashboard/notification_page.dart';
import 'package:student_help/pages/my_dashboard/profile_page.dart';

class MainHeader extends StatefulWidget {
  const MainHeader({super.key});

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  int selectedIndex = 0;

  final List<Widget> pages = [NotificationPage(), ProfilePage()];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    Navigator.push(//it is used for moving from one screen to another
      context,
      MaterialPageRoute(builder: (context) => pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),//this is used to create a bar in which the three compononents
      color: AppColors.backgroundDark,//the user is free to use which ever color he wants to intialize 

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//this is use to create space between one and two components
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),//this is for app logo
            decoration: BoxDecoration(
              color: AppColors.backgroundLight,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "SH",
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(
            children: [
              IconButton(//this snippet is used to create notification icon
                icon: Icon(Icons.notifications, color: Colors.white),//i try to use appcolor.white or any other color but still its showed error
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              IconButton(//this snippet is used for profile icon
                icon: Icon(Icons.person, color: Colors.white),//this particular scenerio shows same behaviour 
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
