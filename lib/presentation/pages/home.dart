import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahitya_application/utils/Common/sahityacard.dart';
import 'package:sahitya_application/utils/sections/Authors.dart';

import '../../utils/appbar/appbar.dart';
import '../../utils/sections/cardplate.dart';
import '../../utils/sections/sahityacatagory.dart';
import '../../utils/sections/upcommingevents.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
        Column(
          children: [
            _bodyHomePage(),
           
          ],
        )),

    );
  }
}

Widget _bodyHomePage() {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          Text('Here are few heightlighted Sahitya in 2024', style: TextStyle(fontSize: 14, color: Colors.grey),),
          Divider(
            thickness: 1,
            color: Colors.red[100],
            
          ),
         SizedBox(height: 10,),
          SahityaCatagory(),
          
          SizedBox(height: 10,),
         
         //call a card from next page
         CardPlate(),

         SizedBox(height: 10,),
          Authors(),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Recient Inks:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        SahityaCard(),
        SahityaCard(),
        SahityaCard(),

        UpComming_Events(),
        SahityaCard(),
        SahityaCard(),

        SizedBox(height: 10,),
        Authors(),
        SahityaCard(),
        Center(
          child: Text("Powered by CodeSpec Solutions"),
        ),
        
        ],
      ),
    ),
  );
}
