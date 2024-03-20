//i want to design a app bar here and call it in other pages

import 'package:flutter/material.dart';
import 'package:sahitya_application/core/constants/few_strings.dart';
import 'package:sahitya_application/utils/sections/side_menu.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.pentagon, color: Colors.black,),
            onPressed: () {
             
              Scaffold.of(context).openDrawer();
            }
          ),
          Spacer(),
          Text(FewStrings.appName, textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right:18.0),
            child: Icon(Icons.circle, color: Colors.orange, size: 24),
          ),
        ]
          ),
          
      )
    

    // Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   backgroundColor: Colors.white,
      //   title: Text(FewStrings.appName, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.circle, color: Colors.orange, size: 24),
      //       tooltip: 'Buy Coins',
      //       onPressed: () {
      //       },
      //     ),
      //   ],
       
      // ),
      
     
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

