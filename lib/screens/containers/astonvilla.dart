import 'package:flutter/material.dart';

class MyAstonVillaContainer extends StatefulWidget {
  const MyAstonVillaContainer({super.key});

  @override
  State<MyAstonVillaContainer> createState() => _MyAstonVillaContainerState();
}

class _MyAstonVillaContainerState extends State<MyAstonVillaContainer> {
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
        color: const Color.fromRGBO(149,191,229 ,10),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0), // Consistent padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Aston Villa FC',
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
            'images/Aston-Villa-FC-logo-300x300.png',
            height: 60.0,
            width: 60.0,
            fit: BoxFit.contain,
            alignment: Alignment.centerLeft, // Align the image to the left
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0), // Consistent padding
            child: ElevatedButton.icon(
              onPressed: _incrementLike,
              icon: Builder(
              builder: (context) => const IconTheme(
                data: IconThemeData(color: Color.fromRGBO(103,14,54,10)), // Change this to your desired icon color
                child:  Icon(Icons.thumb_up),
              ),
            ),
              label: const Text('Vote'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Change this to your desired background color
                foregroundColor: const Color.fromRGBO(103,14,54,10), // Change this to your desired text and icon color
              ),
            ),
          ),
        ],
      ),
    );
  }
}