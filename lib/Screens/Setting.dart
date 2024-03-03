import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/Notifications.dart';
import '../Screens/Dashboard.dart';
class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
   int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                 children:<Widget>[
                   Container(
                     color: Colors.grey[100],
                     child: Row(
                       children: [
                         Icon(Icons.person,size: 100,),
                         Text("Akash Pachpute\n21030xx\nCSE\n2023-24",style: TextStyle(fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),
                     SizedBox(height: 20),
                      Text("Account",style: TextStyle(color: Colors.grey,fontSize:20,fontWeight: FontWeight.bold),),
                       ListTile(
                         leading: Icon(Icons.person),
                        title: Text("Update Academic Year"),
                         onTap: (){

                         },
                       ),

                 ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Set background color to white
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex, // Current selected index
        selectedItemColor: Colors.blueAccent, // Color for selected tab
        unselectedItemColor: Colors.grey, // Color for unselected tab
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
              break;
            default:
              break;
          }
        },
      ),


    );
  }
}
