import 'package:flutter/material.dart';

class MyBournmouthContainer extends StatefulWidget {
  const MyBournmouthContainer({super.key});

  @override
  State<MyBournmouthContainer> createState() => MyBournmouthContainerState();
}

class MyBournmouthContainerState extends State<MyBournmouthContainer> {
  int _likeCount = 0;

  void _incrementLike() {
    setState(() {
      _likeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 500.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 125, 118),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'AFC Bournemouth',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Votes: $_likeCount',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Image.asset(
            'images/AFC-Bournemouth-logo-300x300.png',
            height: 60.0,
            width: 60.0,
            fit: BoxFit.contain,
          ),
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: _incrementLike,
          ),
        ],
      ),
    );
  }
}