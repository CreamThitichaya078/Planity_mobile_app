import 'package:first_app/week6/profile_card.dart';
import 'package:first_app/week6/score_board.dart';
import 'package:flutter/material.dart';
import 'package:first_app/week6/custom_card.dart';

class SimpleCard extends StatefulWidget {
  const SimpleCard({super.key});

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {

  void setTeamWin(){  

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CustomCard(text: 'Hello', color: Colors.red),
            // SizedBox(height: 20,),
            // CustomCard(text: 'World', color: Colors.green),
            // ScoreBoard(title: 'TEAM A', backgroundColor: Colors.red),
            // SizedBox(height: 20,),
            // ScoreBoard(title: 'TEAM B', backgroundColor: Colors.blue),
            // SizedBox(height: 20,),
            ProfileCard(
              name: 'Thitichaya Krueangphatee', 
              position: 'Student',
              email: 'Krueangphatee_t@su.ac.th',
              phone: '0650870270',
              imageUrl: 'cream.jpg',)
          ],
        ),
      ),
    );
  }
}