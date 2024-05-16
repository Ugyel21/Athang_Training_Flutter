import 'package:athang_flutter/models/PlaceCardModel.dart';
import 'package:flutter/material.dart';

class DetailsTravel extends StatelessWidget {
  final PlaceCardModel place;
  const DetailsTravel({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(place.title),
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
                    place.url,
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
                  child: Text(
                    place.description,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
