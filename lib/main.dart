import 'package:flutter/material.dart';

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
          title: Text("Basic Flutter UI-02"),
          backgroundColor: const Color.fromARGB(255, 21, 59, 224),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Image.network(
              "https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg"
            ), 
            Image.network(
              "https://images.pexels.com/photos/1366957/pexels-photo-1366957.jpeg"
            ),
          ],
        ),
      ),
    );
  }
}