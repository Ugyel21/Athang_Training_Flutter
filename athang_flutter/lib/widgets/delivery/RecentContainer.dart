import 'package:athang_flutter/widgets/delivery/RecentCardContainer.dart';
import 'package:athang_flutter/widgets/delivery/RecentHeader.dart';
import 'package:flutter/material.dart';

class RecentContainer extends StatelessWidget {
  const RecentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        children: [
          RecentHeader(),
          RecentCardContainer()
        ],
      ),
    );
  }
}