import 'package:flutter/material.dart';

class MyArsenalContainer extends StatefulWidget {
  const MyArsenalContainer({super.key});

  @override
  State<MyArsenalContainer> createState() => _MyArsenalContainerState();
}

class _MyArsenalContainerState extends State<MyArsenalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 500.0,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Arsenal FC',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'images/Arsenal-FC-logo-300x300.png',
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