import 'package:flutter/material.dart';
import 'package:midtermlabquizjbr/screens/body.dart';

class MyPLVotingAppHome extends StatelessWidget {
  const MyPLVotingAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Premier League Team of The Year',
              style: TextStyle(
                fontFamily: 'Radikal',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const MyPLVotingAppBody (),
      );
  }
}
