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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Allows horizontal scrolling
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: 
                "https://www.citypng.com/public/uploads/preview/hd-blue-apple-watch-series-6-png-704081694622134gll0hgaum4.png",
                placeholder:(context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => 
                Text("Error Loading Image"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
