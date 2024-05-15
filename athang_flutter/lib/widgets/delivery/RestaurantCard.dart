import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 250,
      height: 250,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 220,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2023/10/16/10/57/fountain-8318963_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Meat Spot',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  '20 min',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    children: [
                      Icon(Icons.star),
                      Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          '4.5',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.grey, width: 2))),
                        padding: const EdgeInsets.only(right: 4, left: 4),
                        child: const Text(
                          'Italin',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.grey, width: 2))),
                        padding: const EdgeInsets.only(right: 4, left: 4),
                        child: const Text(
                          'Fresh',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 4, left: 4),
                        child: const Text(
                          'Buy',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
