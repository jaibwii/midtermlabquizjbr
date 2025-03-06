import 'package:flutter/material.dart';

class MyManchesterCityContainer extends StatefulWidget {
  const MyManchesterCityContainer({super.key});

  @override
  State<MyManchesterCityContainer> createState() => _MyManchesterCityContainerState();
}

class _MyManchesterCityContainerState extends State<MyManchesterCityContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 500.0,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 111, 198, 238),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Manchester City',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'images/Manchester-City-FC-logo-300x300.png',
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