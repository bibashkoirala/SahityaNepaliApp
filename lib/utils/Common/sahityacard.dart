import 'package:flutter/material.dart';


class SahityaCard extends StatefulWidget {
  const SahityaCard({super.key});

  @override
  State<SahityaCard> createState() => _SahityaCardState();
}

class _SahityaCardState extends State<SahityaCard> {
  @override
  Widget build(BuildContext context) {
    return         Card(
                    child: Column(
              children: [
                Container(
                   decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red[100]!,
            )
          ),
                  width: double.infinity,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 40,
                        

                                                  //show refresh button
                        child: Padding(
                          padding: const EdgeInsets.only(left:250),
                          child: Icon(Icons.refresh, size: 35, color: Colors.black45,),
                        ),
                        ),  
                        Column(
                          children: [
                            Text(' "This it he first two lines of your Sahitya!' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), ),
                            Text(' Use templets to decorate your content!"', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: Text('See more...', style: TextStyle(fontSize: 12, color: Colors.black),),
                        ),
                        //username
                            Text('PenName'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //change flower or decoration here
                            Icon(Icons.bubble_chart , size: 65, color: Colors.red[100],),

                            SizedBox(
                              width: 20,
                            ),

                            //love icon with : loved counts
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                     Icon(Icons.restart_alt_sharp, size: 35, color: Colors.red[300],), Text('43'),


                                    Icon(Icons.bookmark_add_outlined, size: 30, color: Colors.black45,),
                                    Icon(Icons.share, size: 30, color: Colors.black45,),
                                    Icon(Icons.download_for_offline_outlined, size: 35, color: Colors.black45,),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}