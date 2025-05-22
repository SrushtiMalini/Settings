import 'package:flutter/material.dart';
import 'screens/wifi.dart';
import 'screens/display.dart';
import 'screens/search.dart';
import 'screens/sound.dart';
import 'screens/bluetooth.dart';
import 'screens/password.dart';
void main() {
  runApp(SettingsApp());
}

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Clone',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeSettingsScreen(),
    );
  }
}

class HomeSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings")
        ),
      body: ListView(
    padding: EdgeInsets.all(12),
    children: [
    Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          ListTile(
              leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.blue,
                 shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.wifi,
                 color: Colors.white,
                   ),
                ),
                  title: Text("Wi-Fi"),
                  onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wifi()),
              ),
            ),


          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.yellow,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.brightness_6,
                 color: Colors.white,
                   ),
                ),
            title: Text("Display"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Display()),
            ),
          ),

          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.orange,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.search,
                 color: Colors.white,
                   ),
                ),
            title: Text("Search Settings"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            ),
          ),
        ],
      ),
    ),

    SizedBox(height: 20), // Space between the two containers

    Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.green,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.volume_up,
                 color: Colors.white,
                   ),
                ),
            title: Text("Sounds & Vibrations"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sound()),
            ),
          ),

          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.red,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.bluetooth,
                 color: Colors.white,
                   ),
                ),
            title: Text("Bluetooth"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bluetooth()),
            ),
          ),

          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.blue,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.security,
                 color: Colors.white,
                   ),
                ),
            title: Text("Password & Security"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Password()),
            ),
          ),
        ]
      ),
    ),

       SizedBox(height: 20),

           Container(
        decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 4, offset: Offset(0, 2)),
          ],
        ),
          child:Column(
            children:[
          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.yellow,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.battery_6_bar,
                 color: Colors.white,
                   ),
                ),
            title: Text("Battery"),
            onTap: (){}
            ),

            ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.orange,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.apps,
                 color: Colors.white,
                   ),
                ),
            title: Text("Apps"),
            onTap: (){}
            ),

          ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.green,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.share,
                 color: Colors.white,
                   ),
                ),
            title: Text("Connections & sharing"),
            onTap: (){}
            ),

             ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.red,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.location_on_outlined,
                 color: Colors.white,
                   ),
                ),
            title: Text("Location"),
            onTap: (){}
            ),

            ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.blue,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.phone_android_outlined,
                 color: Colors.white,
                   ),
                ),
            title: Text("About device"),
            ),

            ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.yellow,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.contacts_outlined,
                 color: Colors.white,
                   ),
                ),
            title: Text("Users & accounts"),
            ),

            ListTile(
            leading: Container(
                 decoration: BoxDecoration(
                 color: Colors.orange,
                 shape: BoxShape.circle,
                 ),
                  padding: EdgeInsets.all(8), // Adjust padding as needed
                  child: Icon(
                 Icons.feedback_outlined,
                 color: Colors.white,
                   ),
                ),
            title: Text("Helps & feedback"),
            ),

            ]
          )
           ),
        ],
      ),
    );
  }
}