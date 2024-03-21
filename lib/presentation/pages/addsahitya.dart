import 'package:flutter/material.dart';

import '../../utils/Common/submitbtn.dart';

class AddSahitya extends StatelessWidget {
  const AddSahitya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          toolbarHeight: 70,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black,), onPressed: () { 
               Navigator.of(context).pop();
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Share your Words', style: TextStyle(fontSize: 18, color: Colors.black), ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Publish Quota left :50', style: TextStyle(fontSize: 14, color: Colors.black54 ), ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(children: [Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 4, top: 8),
              child: Text('Your Sahitya in Nepali Script', style: TextStyle(fontSize: 14)),
            )],),
           
            Padding(
              padding: const EdgeInsets.only(left:8.0, right:8),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Text here',
                ),
                maxLines: 7,),
            ),
         
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('Decorate your Content', style: TextStyle(fontSize: 14, color: Colors.blue, fontStyle: FontStyle.italic)),
                          SizedBox(width: 8,),
                          const Text('(Try Themes)', style: TextStyle(fontSize: 12, color: Colors.black, fontStyle: FontStyle.normal)),
                        ],
                      ),

                      const Text('Tip: Use Advanced options for creative content', style: TextStyle(fontSize: 13, color: Colors.black54, fontWeight: FontWeight.bold)),
                     
                    ],
                  ),
                ],
              ),
            ),
             const Divider(
              thickness: 5,
            ),

            Padding(
              padding: const EdgeInsets.only(left:24.0, right: 24, top: 12, bottom: 12),
              child: Text('Your content will be reviewed by one of the expert in related catagory. It usually takes 2-3 days for approval due to large number of submissions. You still can use coins to highlight and Skip the queue.', style: TextStyle(
                fontSize: 14, color: Colors.black38,
              ),),
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value){},
                ),
                 Text('Use the Coins'),
                 SizedBox(width: 100,),
               Icon(Icons.sunny, size: 28, color: Colors.orange,),
               Text(' 240 left', style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),

            Submitbutton(),

          ],
        ),
      ),
    
    );
  }
}
 

