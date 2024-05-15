import 'package:athang_flutter/widgets/delivery/RecentCard.dart';
import 'package:flutter/material.dart';

class RecentCardContainer extends StatelessWidget {
  const RecentCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RecentCard(),
        RecentCard(),
      ],
    );
  }
}