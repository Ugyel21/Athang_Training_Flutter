import 'package:athang_flutter/widgets/travels/PopularContainer.dart';
import 'package:athang_flutter/widgets/travels/RecommandedTravel.dart';
import 'package:flutter/material.dart';

class HomeTravel extends StatelessWidget {
  const HomeTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PopularContainer(),
            RecommendedTravel()
          ],
        ),
      ),
    );
  }
}
