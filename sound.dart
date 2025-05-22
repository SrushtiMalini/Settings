import 'package:flutter/material.dart';
class Sound extends StatefulWidget {
  @override
  _Sound createState() => _Sound();
}

class _Sound extends State<Sound> {
  bool vibration = true;
  double volume = 0.7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sounds and Vibrations")),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text("Vibration"),
            value: vibration,
            onChanged: (val) => setState(() => vibration = val),
          ),
          ListTile(
            title: Text("Volume"),
            subtitle: Slider(
              value: volume,
              onChanged: (val) => setState(() => volume = val),
              min: 0,
              max: 1,
              divisions: 1000,
              label: "${(volume * 100).round()}%",
            ),
          ),
        ],
      ),
    );
  }
}
