import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sahitya_application/core/constants/sahitya_colors.dart';
import 'package:sahitya_application/presentation/pages/addsahitya.dart';
import 'package:sahitya_application/presentation/pages/profile.dart';
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
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
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
                      Text('Profile', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                    Text('Add Sahitya', style: TextStyle(fontSize: 16, color: Colors.purple[900], fontWeight: FontWeight.bold),),
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
                Text('Gajal Category', style: TextStyle(fontSize: 20, color: Colors.purple[900], fontWeight: FontWeight.w900),),
                Text('8 drafts', style: TextStyle(fontSize: 15, color: Colors.purple[900], fontWeight: FontWeight.bold),),
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
                Icon(Icons.snowing, color: Colors.purple[200], size: 30,),
                Text('Muktak Cate', style: TextStyle(fontSize: 20, color: Colors.purple[900], fontWeight: FontWeight.w900),),
                Text('8 drafts', style: TextStyle(fontSize: 15, color: Colors.purple[900], fontWeight: FontWeight.bold),),
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
          //Right side
          Expanded(
          flex: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  
                  decoration: BoxDecoration(
                    color: Colors.purple[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only( top: 10),
                    child: Column(
                      children: [
                        Text('"Personal Task"', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Only you can view this", style: TextStyle(fontSize: 12, color: SahityaColors.secondaryColor, fontWeight: FontWeight.bold),),
                        Column(
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(left:14, top:10),
                            child: Container(
                            height: 60,
                            width: double.infinity,
                            color: SahityaColors.accentColor,
                            child: Center(child: Text('Title of incomplete post', style: TextStyle(color: SahityaColors.primaryColor, fontSize: 14),)),
                            ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(right:14, top:10),
                            child: Container(
                            height: 60,
                            width: double.infinity,
                            color: SahityaColors.accentColor,
                            child: Center(child: Text('Title of incomplete post', style: TextStyle(color: SahityaColors.primaryColor, fontSize: 14),)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:14, top:10),
                            child: Container(
                            height: 60,
                            width: double.infinity,
                            color: SahityaColors.accentColor,
                            child: Center(child: Text('Title of incomplete post', style: TextStyle(color: SahityaColors.primaryColor, fontSize: 14),)),
                            ),
                          ),
                         
                          ],
                        )
                        
                    ]),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 270,
                   decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('"Private Posts"', style: TextStyle(fontSize: 16, color: SahityaColors.primaryColor, fontWeight: FontWeight.bold),),
                        Text("Only people with link can view this", style: TextStyle(fontSize: 12, color: SahityaColors.secondaryColor, fontWeight: FontWeight.bold),),
                        Column(

                          children: [
                        
                        GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(
                            6,
                            (index) => Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: SahityaColors.accentColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text('Post $index', style: TextStyle(fontSize: 14, color: Colors.black),)),
                              ),
                            ),
                          ),
                        ),


                         
                          ],
                        )
                        
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
          flex: 1,
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
                  Icon(Icons.offline_bolt_outlined, color: Colors.purple[200], size: 30),
                  Text('Join Orgainzation', style: TextStyle(fontSize: 16, color: Colors.purple[900], fontWeight: FontWeight.bold),),
                ]
              ),
            )
          ),
          ),
          Expanded(
          flex: 1,
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