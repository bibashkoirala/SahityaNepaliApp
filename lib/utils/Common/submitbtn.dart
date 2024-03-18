import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Submitbutton extends StatefulWidget {
  const Submitbutton({super.key});

  @override
  State<Submitbutton> createState() => _SubmitbuttonState();
}

class _SubmitbuttonState extends State<Submitbutton> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
               padding: const EdgeInsets.all(28.0),
               child: ElevatedButton(onPressed: (){
             
               }, child: Text('Submit Sahitya')),
             );
  }
}