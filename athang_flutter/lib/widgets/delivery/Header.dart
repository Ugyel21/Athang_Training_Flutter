import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          Container(
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, // Change color as needed
                width: 2,),
            ),
            child: const Center(
              child: Text(
                'Delivery Dudes',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Icon(Icons.search)
        ],
      ),
    );
  }
}