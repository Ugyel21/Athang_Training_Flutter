import 'package:athang_flutter/models/PlaceCardModel.dart';
import 'package:athang_flutter/screens/travels/DetailsTravel.dart';
import 'package:flutter/material.dart';

class MediumTravelCard extends StatelessWidget {
  final PlaceCardModel place;

  const MediumTravelCard({
    super.key, required this.place
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsTravel( place: place,)),
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
                place.url,
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
                      place.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(place.description),
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
