import 'package:athang_flutter/screens/Discovery.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const SubHeader(),
              const CategoryMenu(),
              const RecentContainer(),
              const RestaurantContainer(),
              Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Discovery()),
                  );
                },
                child: const Text('Go to Next Page'),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}