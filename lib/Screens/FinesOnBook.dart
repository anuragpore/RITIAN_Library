import 'package:flutter/material.dart';

class FinesOnBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fines on the Book',style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Text('Fines on the Book Screen'),
      ),
    );
  }
}
