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
              color: Colors.grey[300]!,
            )
          ),
                  width: double.infinity,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 40,
                        

                                                  //show refresh button
                        child: Padding(
                          padding: const EdgeInsets.only(left:200),
                          child: Icon(Icons.refresh, size: 35, color: Colors.black45,),
                        ),
                        ),  
                        Column(
                          children: [
                            Text(' "This it he first two lines of your Sahitya!' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), ),
                            Text(' Use templets to decorate your content!"', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), ),
                          ],
                        ),
                        Center(
                          child: Text('See more...', style: TextStyle(fontSize: 12, color: Colors.black),),
                        ),
                        //username
                            Center(child: Text('PenName')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //change flower or decoration here
                            Icon(Icons.bubble_chart , size: 45, color: Colors.red[100],),

                            SizedBox(
                              width: 20,
                            ),

                            //love icon with : loved counts
                            Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.restart_alt_sharp, size: 20, color: Colors.red[300],), Text('43'),
                                    Icon(Icons.bookmark_add_outlined, size: 20, color: Colors.black45,),
                                    Icon(Icons.share, size: 20, color: Colors.black45,),
                                    Icon(Icons.download_for_offline_outlined, size: 20, color: Colors.black45,),
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