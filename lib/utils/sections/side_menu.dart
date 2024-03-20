import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 102, 62, 3),
        ),
        child: Center(
          child: CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 100,),
          ),
        ),

      ),
      ListTile(
        leading: Icon(Icons.event_note_outlined, color: Colors.orange,),
        title:  Text('Sahitya Events'),
        onTap: () {
          //open events page at /section/ class- UpComming_Events
          Navigator.of(context).pushNamed('/UpComming_Events');
        },
      ),
      ListTile(
        leading: Icon(Icons.search_outlined, color: Colors.orange,),
        title:  Text('Dictionary'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
        
      ),

       ListTile(
        leading: Icon(Icons.file_present_sharp, color: Colors.orange,),
        title:  Text('Blogs'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
        
      ),
       ListTile(
        leading: Icon(Icons.settings_input_composite, color: Colors.orange,),
        title:  Text('Catagory'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
        
      ),
       ListTile(
        leading: Icon(Icons.web_stories_outlined, color: Colors.orange,),
        title:  Text('Write a Story'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
        
      ),
       ListTile(
        leading: Icon(Icons.people, color: Colors.orange,),
        title:  Text('Writers'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
        
      ),

       ListTile(
        leading: Icon(Icons.music_note, color: Colors.orange,),
        title:  Text('Listen to Audio Contents'),
        onTap: () {
          // Update the state of the app.
          // ...
        },

        
      ),
       ListTile(
        leading: Icon(Icons.perm_device_information, color: Colors.orange,),
        title:  Text('Decorations'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
        
      ),
    ],

  ),
    
    );
  }
}