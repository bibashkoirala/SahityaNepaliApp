import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahitya_application/core/constants/sahitya_colors.dart';
import 'package:sahitya_application/utils/Common/sahityacard.dart';
import 'package:sahitya_application/utils/sections/Authors.dart';

import '../../utils/appbar/appbar.dart';
import '../../utils/sections/cardplate.dart';
import '../../utils/sections/sahityacatagory.dart';
import '../../utils/sections/side_menu.dart';
import '../../utils/sections/tipsbar.dart';
import '../../utils/sections/upcommingevents.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),

      drawer: const SideMenu(),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
        Column(
          children: [
           Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TipsBar(),
         const SizedBox(height: 10,),
        // const Text('Welcome!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
        // const Text('Here are few heightlighted Sahitya in 2024', style: TextStyle(fontSize: 14, color: Colors.grey),),
        Container(width: 20,
        height: 4,
        color: Colors.grey,
        ),
       const SizedBox(height: 10,),
        const SahityaCatagory(),
        
        const SizedBox(height: 10,),
       
       //call a card from next page
       const CardPlate(),

       const SizedBox(height: 10,),
        const Authors(),

      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Recient Inks:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      const SahityaCard(),
      const SahityaCard(),
      const SahityaCard(),

      const UpComming_Events(),
      const SahityaCard(),
      const SahityaCard(),

      const SizedBox(height: 10,),
      // const Authors(),
      const SahityaCard(),
      const Center(
        child: Text("Powered by CodeSpec Solutions"),
      ),
      
      ],
    ),
  
           
          ),


          ],
        ),

      ),

    );
  }
}

