import 'package:athang_flutter/widgets/discovery/JourneyContentCard.dart';
import 'package:flutter/material.dart';

class JourneyContentContainer extends StatelessWidget {
  const JourneyContentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          JourneyContentCard(),
          JourneyContentCard(),
          JourneyContentCard(),
          JourneyContentCard(),
          JourneyContentCard(),
          JourneyContentCard(),
        ],
      ));
  }
}