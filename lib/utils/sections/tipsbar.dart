import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core/constants/sahitya_colors.dart';

class TipsBar extends StatelessWidget {
  const TipsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left:18.0, right: 18),
          child: Container(
            height: 90,
            width: double.infinity,
            color:  Colors.green[50],
        
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Card(
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          //
                        },
                        icon: Icon(Icons.close,
                        color: SahityaColors.secondaryColor, // set the color
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              
                              Text('Tips: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              SizedBox(height: 4,),
                              Text('Welcome! You can share your thoughts Privately', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: SahityaColors.primaryColor),),],
                          ),
                        ),
                      ),
                    ],),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: SahityaColors.secondaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.pending_actions_rounded, size: 25,),
                              padding: EdgeInsets.all(4),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: SahityaColors.accentColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.audiotrack_outlined, size: 25,),
                              padding: EdgeInsets.all(4),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           Container(
                              decoration: BoxDecoration(
                                color: SahityaColors.accentColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.recommend_rounded, size: 25,),
                              padding: EdgeInsets.all(4),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: SahityaColors.accentColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.repeat_outlined, size: 25,),
                              padding: EdgeInsets.all(4),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),
                    
        
                  
                
              ],
                    ),
                  ),  
                ),
              ],
            ),
          ),
        );
        
  }
}