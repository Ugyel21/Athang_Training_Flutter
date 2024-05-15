import 'package:athang_flutter/widgets/delivery/RestaurantCard.dart';
import 'package:flutter/material.dart';

class RestaurantContentContainer extends StatelessWidget {
  const RestaurantContentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RestaurantCard(),
          RestaurantCard(),
          RestaurantCard(),
          RestaurantCard(),
          RestaurantCard(),
        ],
      ),
    );
  }
}