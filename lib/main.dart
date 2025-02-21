import 'package:flutter/material.dart';

void main() {
  runApp(const MyPLVotingApp());
}

class MyPLVotingApp extends StatelessWidget {
  const MyPLVotingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm Exam John Benedict Reyes',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Premier League Team of The Year',
            style: TextStyle(
              fontFamily: 'Radikal',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Material(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PLContainer(title: 'AFc Bournmouth', includeRow: true, imagePath: 'images/AFC-Bournemouth-logo-300x300.png', color: Color.fromARGB(255, 220, 125, 118)),
                PLContainer(title: 'Arsenal FC', includeRow: true, imagePath: 'images/Arsenal-FC-logo-300x300.png', color: Colors.red),
                PLContainer(title: 'Aston Villa FC', includeRow: true, imagePath: 'images/Aston-Villa-FC-logo-300x300.png', color: Color.fromARGB(255, 99, 191, 234)),
                PLContainer(title: 'Brighton And Hove Albion', includeRow: true, imagePath: 'images/Brighton-Hove-Albion-logo-300x300.png', color: Colors.blue),
                PLContainer(title: 'Liverpool FC', includeRow: true, imagePath: 'images/Liverpool-FC-logo-300x300.png', color: Color.fromARGB(255, 188, 37, 27)),
                PLContainer(title: 'Manchester City', includeRow: true, imagePath: 'images/Manchester-City-FC-logo-300x300.png', color: Color.fromARGB(255, 111, 198, 238)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PLContainer extends StatelessWidget {
  final String title;
  final bool includeRow;
  final String imagePath;
  final Color color;

  const PLContainer({
    super.key,
    required this.title,
    this.includeRow = false,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 500.0,
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: const TextStyle(fontFamily: 'Radikal', fontSize: 20.0, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Image.asset(imagePath),
          const Icon(
            Icons.thumb_up_sharp,
            color: Color.fromARGB(255, 51, 41, 117),
            
          ),
        ],
      ),
    );
  }
}