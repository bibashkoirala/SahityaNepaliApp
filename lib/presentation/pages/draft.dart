import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahitya_application/presentation/pages/addsahitya.dart';
import 'package:sahitya_application/utils/appbar/appbar.dart';

class Draft extends StatelessWidget {
  const Draft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30.0, left: 10),
                    child: Text('07 January, 2024', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),), 
                  )
                ]
              ),
              Row(
                children: [
                  Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hey BibashJr', style: TextStyle(color:Colors.purple[800] , fontSize: 22, fontWeight: FontWeight.w900),),
                Text('You are dooing great!', style: TextStyle(fontSize: 13, color:Colors.purple[300] , fontWeight: FontWeight.bold),),
              ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  children: [
                    Icon(Icons.circle, color: Colors.orange, size: 24),
                    Text('Coins', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
                ]
              ),
        
              Text("White Board", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.purple[800]),),
            //2rd section
           Row(
              children: [
          //Left side
          Expanded(
          flex: 2,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                 //view addSahitya.dart
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddSahitya()),

                  );
                },
                child: Container(
                height: 60,
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.add_box_outlined, color: Colors.purple[200], size: 30),
                    Text('Add New', style: TextStyle(fontSize: 16, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                  ]),
                )
              ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.local_fire_department, color: Colors.purple[200], size: 30),
                Text('Catagory 1', style: TextStyle(fontSize: 16, color: Colors.purple[900], fontWeight: FontWeight.w900),),
                Text('8 drafts', style: TextStyle(fontSize: 12, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Colors.purple[600],
                        )
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last edited : 12:30', style: TextStyle(fontSize: 12, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                        Text('Total Reach : 450', style: TextStyle(fontSize: 12, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                      ]
                    )
                  ]
                )
                ]),
                 ])
              ),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     
                     Text("Catagory 2")
                    ]),
                  )
                ),
              ),
        
            ],
        
          ),
          ),
          //Right side
          Expanded(
          flex: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  
                  decoration: BoxDecoration(
                    color: Colors.purple[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Personal Task", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                      // Icon(Icons.add_box_outlined, color: Colors.white, size: 30),
                      // Text('Add New', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                    ]),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Private Content"),
                        SizedBox(height: 10,),
                        Text("Only visible to whom you share.")
                      // Icon(Icons.add_box_outlined, color: Colors.purple, size: 30),
                      // Text('Add New', style: TextStyle(fontSize: 16, color: Colors.purple, fontWeight: FontWeight.bold),),
                    ]),
                  )
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Followed Events")
                      // Icon(Icons.add_box_outlined, color: Colors.purple[200], size: 30),
                      // Text('Add New', style: TextStyle(fontSize: 16, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                    ]),
                  )
                ),
              ),
            ],
        
          ),
          ),
              ],
            ),
        
            //3rd section
            Row(
              children: [
          Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logo_dev_rounded, color: Colors.purple[200], size: 30),
                  Text('Logo', style: TextStyle(fontSize: 16, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                ]
              ),
            )
          ),
          ),
          Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.file_present_sharp, color: Colors.purple[200], size: 30),
                  Icon(Icons.calendar_month, color: Colors.purple[200], size: 30),
                  Icon(Icons.precision_manufacturing_outlined, color: Colors.purple[200], size: 30),
        
                ]
              )
            )
          ),
          ),
              ],
            ),
            ]
          ),
        ),

      )
    );
  }
}