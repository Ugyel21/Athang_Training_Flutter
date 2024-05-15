import 'package:flutter/material.dart';

class ForYouHeader extends StatelessWidget {
  const ForYouHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'For you',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'See all',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, color: Colors.black),
          )
        ],
      ),
    );
  }
}
