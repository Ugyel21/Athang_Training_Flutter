import 'package:athang_flutter/widgets/travels/MediumTravelCard.dart';
import 'package:flutter/material.dart';
import '../../models/PlaceCardModel.dart';

class RecommendedTravel extends StatelessWidget {
  RecommendedTravel({super.key});

  final List<PlaceCardModel> placesList = [
    PlaceCardModel(
        url:
            "https://cdn.pixabay.com/photo/2023/01/25/22/46/grey-reef-shark-7744765_640.jpg",
        description: "description 1",
        title: "title 1"),
    PlaceCardModel(
        url:
            "https://cdn.pixabay.com/photo/2022/12/02/21/20/blue-7631674_640.jpg",
        description: "description 2",
        title: "title 2"),
    PlaceCardModel(
        url:
            "https://cdn.pixabay.com/photo/2022/11/07/21/31/rose-7577265_640.jpg",
        description: "description 3",
        title: "title 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: placesList.map((PlaceCardModel el) {
                  return MediumTravelCard(place: el);
                }).toList(),
              ),
            )
          ],
        ));
  }
}
