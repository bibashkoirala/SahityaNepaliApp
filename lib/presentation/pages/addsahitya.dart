import 'package:flutter/material.dart';
import 'package:sahitya_application/core/constants/sahitya_colors.dart';

import '../../utils/Common/submitbtn.dart';

class AddSahitya extends StatelessWidget {
  const AddSahitya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 241, 248),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Share your Words',
            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 74, 20, 140))),
        
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:8.0, right: 8),
        child: ListView(
          children: [
            Row(children: [
              Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: SahityaColors.primaryColor),
                            color: Colors.amber[50],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(Icons.catching_pokemon, color: SahityaColors.primaryColor,),
                                Text('Uncategorized', style: TextStyle(fontSize: 14, color: SahityaColors.primaryColor),),
                              ]
                            ),
                          ),
                        ),
                      ),
             ],),
           
            Padding(
              padding: const EdgeInsets.only(left:8.0, right:8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: const TextStyle(fontSize: 22, ),),
                    maxLines: 1,),
                    //Date and time show as per now
                  Row(
                    children: [
                      Text(DateTime.now().toString().substring(0,19), style: TextStyle(fontSize: 14, color: SahityaColors.secondaryColor),),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.tab_unselected, color: SahityaColors.primaryColor,),
                                Text('Templetes', style: TextStyle(fontSize: 16, color: SahityaColors.primaryColor),),

                               
                              ]
                            ),
                            Text('Default theme: "Color and Light"', style: TextStyle(fontSize: 12))

                          ],
                        ),
                      )
                    ],
                  ),
                   
                ],
              ),
            ),
         
           TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Start writing...',
              ),
              maxLines: 7,
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  IconButton(
                    icon: Icon(Icons.format_quote),
                    color: Colors.black38,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.format_bold),
                    color: Colors.black38,
                    onPressed: () {
                      //make the selected text bold
                      
                                         },
                  ),
                  IconButton(
                    icon: Icon(Icons.format_italic),
                    color: Colors.black38,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.format_underlined),
                    color: Colors.black38,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                IconButton(
                  icon: Icon(Icons.text_decrease),
                  color: Colors.black38,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.text_fields_outlined),
                  color: Colors.black38,
                  onPressed: () {
                    //make the selected text bold
                    
                                       },
                ),
                IconButton(
                  icon: Icon(Icons.format_color_text_sharp),
                  color: Colors.black38,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.text_rotate_up),
                  color: Colors.black38,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.align_horizontal_left_rounded),
                  color: Colors.black38,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.align_horizontal_center),
                  color: Colors.black38,
                  onPressed: () {},
                ),
              ],
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
 

