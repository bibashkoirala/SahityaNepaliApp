//i want to design a app bar here and call it in other pages

import 'package:flutter/material.dart';
import 'package:sahitya_application/core/constants/few_strings.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.white,
      title: Text(FewStrings.appName, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.select_all_outlined, color: Colors.black, size: 30),
        onPressed: () {
          //open slide drawer
          Scaffold.of(context).openDrawer();

        },
        
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.circle, color: Colors.orange, size: 24),
          
          tooltip: 'Buy Coins',
          onPressed: () {
            
          
          },
          //show tooltip on hover
        ),
      ],
      
      
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
