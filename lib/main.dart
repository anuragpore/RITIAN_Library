import 'package:flutter/material.dart';
import '../Screens/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RIT Central Library',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          backgroundColor: Colors.blueAccent
          ,
        ),
        body: SignInPage(),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 5.0), // Space from the top
          Image.asset(
            'assets/1.png',
            height: 100,
            width: 500,// Adjust height as needed
          ),
          SizedBox(height: 5.0),

          Image.asset(
            'assets/img.png',
              height: 250,
            width: 500,
            fit: BoxFit.cover,// Adjust height as needed
          ),
          SizedBox(height: 20.0),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),// Space between images// Space between images and fields
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0), // Space between fields
                Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Hide password
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0), // Space below fields
          Container(
            width: double.infinity, // Set the width of the button
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // Adjust border radius as needed
                  ),
                ),
              ),
              child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
          ),

        ],
      ),
    );
  }
}
