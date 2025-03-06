import 'package:flutter/material.dart';

class MyBrightonContainer extends StatefulWidget {
  const MyBrightonContainer({super.key});

  @override
  State<MyBrightonContainer> createState() => _MyBrightonContainerState();
}

class _MyBrightonContainerState extends State<MyBrightonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 500.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Brighton And Hove Albion',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'images/Brighton-Hove-Albion-logo-300x300.png',
            height: 60.0,
            width: 60.0,
            fit: BoxFit.contain,
          ),
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {
              // Add your voting logic here
            },
          ),
        ],
      ),
    );
  }
}