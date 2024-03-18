//i need a card that will be called in homepage.dart

import 'package:flutter/material.dart';

import '../Common/sahityacard.dart';

class CardPlate extends StatelessWidget {
  const CardPlate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('WatchList:', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),

           SahityaCard(),

        ]
      ),
    );

          
              
  
  }
}