import 'package:athang_flutter/widgets/travels/MediumTravelCard.dart';
import 'package:flutter/material.dart';

class RecommendedTravel extends StatelessWidget {
  const RecommendedTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top:16),
      padding:const EdgeInsets.symmetric(horizontal: 16),
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
            margin:const EdgeInsets.only(top:8),
            child: const Column(
              children: [
                MediumTravelCard(title:'Title 1'),
                MediumTravelCard(title:'Title 2'),
                MediumTravelCard(title:'Title 3'),
                MediumTravelCard(title:'Title 4'),
              ],
            ),
          )
        ],
      )
    );
  }
}