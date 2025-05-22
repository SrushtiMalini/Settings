import 'package:flutter/material.dart';

class Wifi extends StatefulWidget {
  @override
  _Wifi createState() => _Wifi();
}

class _Wifi extends State<Wifi> {
  bool wifiEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wi-Fi Settings")),
      body: Column(
        children: [
          SwitchListTile(
            title: Text("Wi-Fi"),
            value: wifiEnabled,
            onChanged: (value) {
              setState(() {
                wifiEnabled = value;
              });
            },
          ),
          if (wifiEnabled)
            ...["Home WiFi", "Cafe Network", "Office Net"].map(
              (network) => ListTile(
                title: Text(network),
                trailing: Icon(Icons.lock),
              ),
            ),
        ],
      ),
    );
  }
}
