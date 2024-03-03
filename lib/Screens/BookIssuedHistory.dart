import 'package:flutter/material.dart';

class BookIssuedHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Issued History',style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Text('Book Issued History Screen'),
      ),
    );
  }
}
