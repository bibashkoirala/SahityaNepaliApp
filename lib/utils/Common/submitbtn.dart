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
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {}, child: Text('Publish Sahitya')),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {}, child: Text('Draft')),
          ),
        ),
      ],
    );
   
  }
}