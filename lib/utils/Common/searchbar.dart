// make a searchbar

import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
    height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.grey[200],
              ),
              child: Icon( Icons.filter_alt_off_outlined, color: Colors.red,  )),
           ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.grey[200],
              ),
              child: Icon( Icons.search, color: Colors.red,  )),
          ),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                      
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Search for ArtPiece', style: TextStyle(color: Colors.black38),),
                    // Icon(Icons.search, color: Colors.red,  ),
                  ],
                ),
                
                ),
            ),
          ),

          
      
          
        ]
      )
    );
  }
}
