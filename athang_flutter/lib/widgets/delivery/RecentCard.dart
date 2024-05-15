import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 20),
          width: 200,
          height: 120,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2023/10/16/10/57/fountain-8318963_1280.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'The Steak Family',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Connecting Fresh Steak',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
              ],
            ),
            // ignore: prefer_const_constructors
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
              ),
              child: const Icon(Icons.add_rounded),
            )
          ],
        ),
        Container(),
      ],
    );
  }
}
