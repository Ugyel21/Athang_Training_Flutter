import 'package:athang_flutter/screens/travels/DetailsTravel.dart';
import 'package:flutter/material.dart';

class MediumTravelCard extends StatelessWidget {
  final String title;
  final String url;
  final String description;

  const MediumTravelCard({super.key, 
    required this.title,
    this.description = "Basic description",
    this.url =
        "https://cdn.pixabay.com/photo/2023/01/13/14/58/snake-7716269_1280.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailsTravel()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(description),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}