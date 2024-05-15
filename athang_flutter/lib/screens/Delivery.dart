import 'package:athang_flutter/widgets/delivery/CategoryMenu.dart';
import 'package:athang_flutter/widgets/delivery/Header.dart';
import 'package:athang_flutter/widgets/delivery/RecentContainer.dart';
import 'package:athang_flutter/widgets/delivery/RestaurantContainer.dart';
import 'package:athang_flutter/widgets/delivery/SubHeader.dart';
import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SubHeader(),
              CategoryMenu(),
              RecentContainer(),
              RestaurantContainer()
            ],
          ),
        ),
      ),
    );
  }
}