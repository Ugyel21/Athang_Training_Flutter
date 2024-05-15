import 'package:flutter/material.dart';

class RestaurantHeader extends StatelessWidget {
  const RestaurantHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Restaurents',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 2))),
          child: const Text(
            'View all',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        )
      ],
    );
  }
}