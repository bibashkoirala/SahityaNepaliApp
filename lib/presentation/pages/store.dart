import 'package:flutter/material.dart';
import 'package:sahitya_application/utils/appbar/appbar.dart';
import 'package:sahitya_application/utils/sections/sahityacatagory.dart';

import '../../utils/Common/searchbar.dart';
import '../../utils/sections/bookscard.dart';



class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: MyAppBar(),
      body: _storeDecoraton(),
    );
}
}

_storeDecoraton() {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text("Books Point", style: TextStyle(fontSize: 22,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Searchbar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("You have 0 books in your store."),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              
              width: 40,
              height: 4,
              color: Colors.red[100],
              ),
           ),
          Text("Top Categories", style: TextStyle(fontSize: 18, color: Colors.black),),
          SahityaCatagory(),
          SizedBox(height: 10,),
          Text("All Books", style: TextStyle(fontSize: 18, color: Colors.black),),
          BooksCard(),
          SizedBox(height: 10,),
          ElevatedButton(
          
            onPressed: () {}, 
          child: 
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, color: Colors.white,),
              Text("Add Books", style: TextStyle(color: Colors.white),),
            ],
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounds the corners
              ),
  
            ),
          
          
          ),
        ],
      ),
    ),
  );
}



