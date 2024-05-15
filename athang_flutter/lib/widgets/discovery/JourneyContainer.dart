import 'package:athang_flutter/widgets/discovery/JourneyContentContainer.dart';
import 'package:athang_flutter/widgets/discovery/JourneyHeader.dart';
import 'package:flutter/material.dart';

class JourneyContainer extends StatelessWidget {
  const JourneyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Column(
        children: [
          JourneyHeader(),
          JourneyContentContainer()
        ],
      ),
    );
  }
}