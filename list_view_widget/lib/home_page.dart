import 'package:flutter/material.dart';
import 'package:list_view_widget/circle.dart';
import 'package:list_view_widget/square.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _boxes = [
    'box1',
    'box2',
    'box3',
    'box4',
  ];

  final List _circles = [
    'circle1',
    'circle2',
    'circle3',
    'circle4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //instagram stories
          Container(
            height: 150,
            child: ListView.builder(
              //scroll direction control
              scrollDirection: Axis.horizontal,
              itemCount: _circles.length,
              itemBuilder: (context, index) {
                return MyCircle(
                  text: _circles[index],
                );
              },
            ),
          ),

          //instagram posts
          Expanded(
            //use flex to make it correct space
            //flex: 4,
            child: ListView.builder(
              itemCount: _boxes.length,
              itemBuilder: (context, index) {
                return MySquare(
                  textMessage: _boxes[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
