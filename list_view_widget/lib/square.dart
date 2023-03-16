import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String textMessage;

  const MySquare({
    super.key,
    required this.textMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Text(
            textMessage,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
