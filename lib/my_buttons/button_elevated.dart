import 'package:flutter/material.dart';

// NOTE: Changes Done by Aman Rana: Please do not change any code here.
// NOTE: This same button can be used wherever necessary.

// NOTE: This page is still in Development!
class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTapDown: (detectButton) => setState(() => _isPressed = true),
          onTapUp: (detectButton) => setState(() => _isPressed = false),
          onTapCancel: () => setState(() => _isPressed = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              color: _isPressed ? Colors.white : Colors.black,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              "Button",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

//NOTE: Check out the official Dart website for methods to implement to the project
