// ignore: file_names
import 'package:athang_flutter/screens/Products.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const BirdCard(),
              const SmallCard(),
              const SmallCard(),
              Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Products()),
                  );
                },
                child: const Text('Go to Next Page'),
              ),
            )
            ],
          ),
        ));
  }
}
