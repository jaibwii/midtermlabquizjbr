import 'package:flutter/material.dart';
import 'package:midtermlabquizjbr/screens/containers/arsenal.dart';
import 'package:midtermlabquizjbr/screens/containers/astonvilla.dart';
import 'package:midtermlabquizjbr/screens/containers/bournmouth.dart';
import 'package:midtermlabquizjbr/screens/containers/brighton.dart';
import 'package:midtermlabquizjbr/screens/containers/liverpool.dart';
import 'package:midtermlabquizjbr/screens/containers/manchestercity.dart';

class MyPLVotingAppBody extends StatelessWidget {
  const MyPLVotingAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyBournmouthContainer(),
            MyArsenalContainer(),
            MyAstonVillaContainer(),
            MyBrightonContainer(),
            MyLiverpoolContainer(),
            MyManchesterCityContainer()
          ],
        ),
      ),
    );
  }
}