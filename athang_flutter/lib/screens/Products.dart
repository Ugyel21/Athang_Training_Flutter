import 'package:athang_flutter/screens/Delivery.dart';
import 'package:athang_flutter/widgets/product_widgets/FeaturedContainer.dart';
import 'package:athang_flutter/widgets/product_widgets/RecommendedContainer.dart';
import 'package:athang_flutter/widgets/product_widgets/SearchContainer.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Discovery',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchContainer(),
            const RecommendedContainer(),
            const FeaturedContainer(),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Delivery()),
                  );
                },
                child: const Text('Go to Next Page'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
