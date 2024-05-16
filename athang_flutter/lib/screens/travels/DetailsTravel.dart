import 'package:flutter/material.dart';

class DetailsTravel extends StatelessWidget {
  const DetailsTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details screen'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2023/05/29/00/24/blue-tit-8024809_640.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    'Location info',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    'Location description in an descriptive way',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
