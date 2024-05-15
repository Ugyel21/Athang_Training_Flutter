import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 60,
      decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.all(20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_city_sharp),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              '102 NE 1st Ave, Delivery Breach, FL',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w200, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
