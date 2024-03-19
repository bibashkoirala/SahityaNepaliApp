//horizontal scrolling each cards with image form network, title, subtitle and price button
import 'package:flutter/material.dart';

class BooksCard extends StatelessWidget {
  const BooksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(7, (index) => _bookCard()),
      ),
    );
  }
}

_bookCard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red[100]!,
            ),
            height: 150,
            width: 150,
          ),
          Text("Book Title", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          Text("Author Name", style: TextStyle(fontSize: 14, color: Colors.black)),
          Text("Price", style: TextStyle(fontSize: 14, color: Colors.black)),
          Text("View Details", style: TextStyle(fontSize: 14, color: Colors.blue)),
        ],
      ),
    ),
  );
}


