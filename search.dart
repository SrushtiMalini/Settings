import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  final List<String> mockResults = [
    "Wi-Fi Settings",
    "Display Brightness",
    "Bluetooth",
    "Notifications",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Settings")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search settings...",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mockResults.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(mockResults[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
