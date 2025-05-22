import 'package:flutter/material.dart';
class Password extends StatefulWidget {
  @override
  _Password createState() => _Password();
}

class _Password extends State<Password> {
  bool fingerprintEnabled = true;
  bool faceUnlock = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Password & Security")),
      body: Column(
        children: [
          SwitchListTile(
            title: Text("Fingerprint Unlock"),
            value: fingerprintEnabled,
            onChanged: (val) => setState(() => fingerprintEnabled = val),
          ),
          SwitchListTile(
            title: Text("Face Unlock"),
            value: faceUnlock,
            onChanged: (val) => setState(() => faceUnlock = val),
          ),
        ],
      ),
    );
  }
}
