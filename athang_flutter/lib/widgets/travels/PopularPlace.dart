import 'package:athang_flutter/screens/travels/DetailsTravel.dart';
import 'package:flutter/material.dart';

class PopularPlace extends StatelessWidget {
  const PopularPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailsTravel()),
        );
      },
      child: Container(
        height: 300,
        width: 400,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2022/11/04/13/43/car-7569896_1280.jpg",
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueAccent,
        ),
        child: Container(
          decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, .2)),
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Title of the place',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            color: Colors.white,
                          ),
                          Text(
                            'Location Data, Country',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    '4.7',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
