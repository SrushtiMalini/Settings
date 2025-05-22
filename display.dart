import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  _Display createState() => _Display();
}
class _Display extends State<Display> {
  bool darkMode = false;
  bool autoRotate = true;
  double fontSize = 16;
  double brightness = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Display Settings")),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text("Dark Mode"),
            value: darkMode,
            onChanged: (val) {
              setState(() {
                darkMode = val;
              });
            },
          ),
          SwitchListTile(
            title: Text("Auto-Rotate Screen"),
            value: autoRotate,
            onChanged: (val) {
              setState(() {
                autoRotate = val;
              });
            },
          ),
          ListTile(
            title: Text("Font Size"),
            subtitle: Text("${fontSize.toStringAsFixed(0)} pt"),
            trailing: Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FontSizeScreen(
                  currentSize: fontSize,
                  onSizeChanged: (size) {
                    setState(() => fontSize = size);
                  },
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Brightness"),
            subtitle: Slider(
              value: brightness,
              onChanged: (val) {
                setState(() => brightness = val);
              },
              min: 0,
              max: 1,
              divisions: 1000,
              label: "${(brightness * 100).round()}%",
            ),
          ),
        ],
      ),
    );
  }
}

class FontSizeScreen extends StatefulWidget {
  final double currentSize;
  final ValueChanged<double> onSizeChanged;

  FontSizeScreen({required this.currentSize, required this.onSizeChanged});

  @override
  _FontSizeScreenState createState() => _FontSizeScreenState();
}

class _FontSizeScreenState extends State<FontSizeScreen> {
  late double fontSize;

  @override
  void initState() {
    super.initState();
    fontSize = widget.currentSize;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Font Size")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Preview Text",
            style: TextStyle(fontSize: fontSize),
          ),
          Slider(
            value: fontSize,
            min: 12,
            max: 30,
            divisions: 600,
            label: "${fontSize.toStringAsFixed(0)} pt",
            onChanged: (val) {
              setState(() => fontSize = val);
              widget.onSizeChanged(val);
            },
          ),
        ],
      ),
    );
  }
}
