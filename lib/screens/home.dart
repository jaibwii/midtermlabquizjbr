import 'package:flutter/material.dart';
import 'package:midtermlabquizjbr/screens/body.dart';

class MyPLVotingAppHome extends StatelessWidget {
  const MyPLVotingAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: const MyPLVotingAppBody (),
      );
  }
}

// class PLContainer extends StatelessWidget {
//   final String title;
//   final bool includeRow;
//   final String imagePath;
//   final Color color;

//   const PLContainer({
//     super.key,
//     required this.title,
//     this.includeRow = false,
//     required this.imagePath,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 90.0,
//       width: 500.0,
//       margin: const EdgeInsets.all(10.0),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontFamily: 'Radikal', fontSize: 20.0, color: Color.fromARGB(255, 255, 255, 255)),
//           ),
//           Image.asset(imagePath),
//           const Icon(
//             Icons.thumb_up_sharp,
//             color: Color.fromARGB(255, 51, 41, 117),
            
//           ),
//         ],
//       ),
//     );
//   }
// }