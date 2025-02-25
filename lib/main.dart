import 'package:cached_network_image/cached_network_image.dart';
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
          title: const Text("Basic Flutter UI-02"),
          backgroundColor: const Color.fromARGB(255, 21, 59, 224),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue, // Optional: Adds background color
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.circle, size: 40, color: Colors.white), // Improved UI
                    TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.headphones, color: Colors.white), // Ensure proper child widget
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text("Images"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
