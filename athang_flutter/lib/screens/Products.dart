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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SearchContainer(),
            RecommendedContainer(),
            FeaturedContainer()
          ],
        ),
      ),
    );
  }
}
