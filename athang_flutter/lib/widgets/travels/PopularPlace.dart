import 'package:athang_flutter/models/PlaceCardModel.dart';
import 'package:athang_flutter/screens/travels/DetailsTravel.dart';
import 'package:flutter/material.dart';

class PopularPlace extends StatelessWidget {
  final PlaceCardModel place;

  const PopularPlace({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsTravel(place: place)),
        );
      },
      child: Container(
        height: 300,
        width: 400,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(place.url),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueAccent,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      place.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.room,
                          color: Colors.white,
                        ),
                        Text(
                          place.description,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    "3.4",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
