import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahitya_application/core/constants/sahitya_colors.dart';

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
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
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
          child: Row(
            children: List.generate(
              10,
              (index) => Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      color: SahityaColors.secondaryColor,
                      shadowColor: SahityaColors.accentColor,
                      child: Column(
                        children: [
                          Container(
                            
                            width: 70,
                            height: 70,
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
      ],
    ),
  );
}



