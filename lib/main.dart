import 'package:flutter/material.dart';
import 'package:flutter_application_2/body.dart'; // Import AppBody

void main() {
  runApp(const LabClass05());
}

class LabClass05 extends StatelessWidget {
  const LabClass05({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter UI-02',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basic Flutter UI-02"),
          backgroundColor: const Color.fromARGB(255, 21, 59, 224),
          centerTitle: true,
        ),
        body: const AppBody(), // Corrected to include AppBody widget
      ),
    );
  }
}
