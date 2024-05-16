import 'package:athang_flutter/models/PlaceCardModel.dart';
import 'package:athang_flutter/widgets/travels/PopularPlace.dart';
import 'package:flutter/material.dart';

class PopularContainer extends StatelessWidget {
  PopularContainer({super.key});

  final List<PlaceCardModel> placeList = [
    PlaceCardModel(
      url:
          "https://cdn.pixabay.com/photo/2023/01/25/22/46/grey-reef-shark-7744765_640.jpg",
      title: "title 1",
      description: "Place 1",
    ),
    PlaceCardModel(
      url:
          "https://cdn.pixabay.com/photo/2022/12/02/21/20/blue-7631674_640.jpg",
      title: "title 2",
      description: "Place 2",
    ),
    PlaceCardModel(
      url:
          "https://cdn.pixabay.com/photo/2022/11/07/21/31/rose-7577265_640.jpg",
      title: "title 3",
      description: "Place 3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: placeList.map((PlaceCardModel el) {
            return PopularPlace(place: el);
          }).toList(),
        ),
      ),
    );
  }
}
