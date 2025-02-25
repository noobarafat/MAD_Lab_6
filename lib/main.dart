import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE3E8FF),
        body: Center(
          child: PriceCard(),
        ),
      ),
    );
  }
}

class PriceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Discount Tag
          const Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "50% OFF",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 24,
                ),
              ],
            ),
          ),
          
          // Product Image from Online URL
          Image.network(
            'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/awjogtdnqxniqqk0wpgf/AIR+MAX+270.png', // Replace with your online image URL
            width: 250,
            height: 250,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.broken_image, size: 100, color: Colors.grey);
            },
          ),
          
          // Product Name
          const Text(
            "Nike Air Shoes",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          
          // Price Section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "450",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 15),
              Text(
                "600",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[400],
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
