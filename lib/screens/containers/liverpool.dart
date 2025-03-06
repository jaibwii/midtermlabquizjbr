import 'package:flutter/material.dart';

class MyLiverpoolContainer extends StatefulWidget {
  const MyLiverpoolContainer({super.key});

  @override
  State<MyLiverpoolContainer> createState() => _MyLiverpoolContainerState();
}

class _MyLiverpoolContainerState extends State<MyLiverpoolContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 500.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Liverpool FC',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'images/Liverpool-FC-logo-300x300.png',
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