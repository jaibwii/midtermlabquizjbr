import 'package:flutter/material.dart';
import 'package:midtermlabquizjbr/screens/home.dart';

void main() {
  runApp(const MyPLVotingApp());
}

class MyPLVotingApp extends StatelessWidget {
  const MyPLVotingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Midterm Exam John Benedict Reyes',
      home:  MyPLVotingAppHome() ,
    );
  }
}

