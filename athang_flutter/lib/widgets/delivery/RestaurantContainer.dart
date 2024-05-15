import 'package:athang_flutter/widgets/delivery/RestaurantContentContainer.dart';
import 'package:athang_flutter/widgets/delivery/RestaurantHeader.dart';
import 'package:flutter/material.dart';

class RestaurantContainer extends StatelessWidget {
  const RestaurantContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Column(children: [
          RestaurantHeader(),
          RestaurantContentContainer()
      ],),
    );
  }
}