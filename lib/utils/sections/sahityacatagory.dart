import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SahityaCatagory extends StatelessWidget {
  const SahityaCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _sahityaCatagory(),
    );
  }
}


_sahityaCatagory() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Catagory', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
          Text('View All >>', style: TextStyle(fontSize: 12, color: Colors.black),),
        ],
      ),
          SizedBox(height: 10,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
           decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red[100]!,
            )
          ),
          child: Row(
            children: List.generate(
              10,
              (index) => Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                      color: Colors.red[300],
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            
                            width: 60,
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.mode_of_travel_rounded, size: 35, color: Colors.white,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Mood $index', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),),
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



