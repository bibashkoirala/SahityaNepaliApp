import 'package:flutter/material.dart';
import 'package:sahitya_application/core/constants/sahitya_colors.dart';


class Authors extends StatefulWidget {
  const Authors({super.key});

  @override
  State<Authors> createState() => _AuthorsState();
}

class _AuthorsState extends State<Authors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _Authors(),
    );
  }
}


_Authors() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Authors', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
          Text('View All >>', style: TextStyle(fontSize: 12, color: Colors.black),),
        ],
      ),
          SizedBox(height: 10,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
           
          child: Row(
            children: List.generate(
              10,
              (index) => Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 5,
                      color: SahityaColors.secondaryColor,
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.portable_wifi_off_outlined, size: 65, color: Colors.white,),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('Author $index', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
 
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}