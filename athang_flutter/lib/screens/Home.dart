// ignore: file_names
import 'package:athang_flutter/widgets/SmallCard.dart';
import 'package:athang_flutter/widgets/ProductCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Products',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.amber,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              BirdCard(),
              SmallCard(),
              SmallCard(),
            ],
          ),
        ));
  }
}
