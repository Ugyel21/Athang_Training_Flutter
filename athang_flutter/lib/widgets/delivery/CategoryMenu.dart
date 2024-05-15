import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
              child: const Text(
                'All',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                'Eats',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red),
              )),
          const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                'Restaurants',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red),
              ))
        ],
      ),
    );
  }
}
