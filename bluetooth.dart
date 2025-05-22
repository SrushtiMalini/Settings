import 'package:flutter/material.dart';
class Bluetooth extends StatefulWidget {
  @override
  _Bluetooth createState() => _Bluetooth();
}

class _Bluetooth extends State<Bluetooth> {
  bool bluetoothEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bluetooth Settings")),
      body: Column(
        children: [
          SwitchListTile(
            title: Text("Bluetooth"),
            value: bluetoothEnabled,
            onChanged: (val) => setState(() => bluetoothEnabled = val),
          ),
          if (bluetoothEnabled)
            ...["Speaker", "Headphones", "Laptop"].map(
              (device) => ListTile(
                title: Text(device),
                trailing: Icon(Icons.bluetooth_connected),
              ),
            )
        ],
      ),
    );
  }
}
