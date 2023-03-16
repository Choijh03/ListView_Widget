import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String text;

  const MyCircle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
