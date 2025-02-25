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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.stadium),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Profile",
            ),
          ],
        ),
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
                    const Icon(Icons.alternate_email, size: 40, color: Colors.white),
                    TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.headphones, color: Colors.white),
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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Prevents overflow by allowing scrolling
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://i1.rgstatic.net/ii/profile.image/11431281227833587-1709754522467_Q512/K-M-Arafat-Islam.jpg",
                width: 600, // Adjust width as needed
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
