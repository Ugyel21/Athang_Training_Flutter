import 'package:athang_flutter/widgets/travels/PopularPlace.dart';
import 'package:flutter/material.dart';

class PopularContainer extends StatelessWidget {
  const PopularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularPlace(),
            PopularPlace(),
            PopularPlace(),
            PopularPlace(),
          ],
        ),
      ),
    );
  }
}
