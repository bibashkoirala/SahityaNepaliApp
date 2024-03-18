import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahitya_application/utils/Common/submitbtn.dart';

class UpComming_Events extends StatelessWidget {
  const UpComming_Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('UpComming Events:' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
        Container(
          //add decoration here
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red[100]!,
            )
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _eventBanner(),
                  _eventDetail(),
                ],
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}

_eventDetail() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("This is the title of the event - Solo by Bibash Koirala", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), ),
        //display current date and time stramp dynamic
        SizedBox(height: 10,),
        Text("March 31, 2024 | 01:00 PM", style: TextStyle(fontSize: 16),),
               SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Venue:"),
            Text("Location:"),
          ],
        ),
        //Buy tickets
       Container(
         width: double.infinity,
         child: ElevatedButton(onPressed: (){
          
         }, child: Text("Buy Tickets")),
       )
      ]
    ),
  );
}

_eventBanner() {

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: double.infinity,
      color: Colors.red[300],
    ),
  );

}