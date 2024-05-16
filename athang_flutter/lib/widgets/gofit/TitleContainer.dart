import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Dare ',
                ),
                TextSpan(
                  text: 'to ',
                ),
                TextSpan(
                  text: 'innovate ',
                ),
                TextSpan(
                  text: 'with ',
                ),
                TextSpan(
                  text: 'Gofit',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2, color: Colors.grey)),
                      child: const Icon(Icons.arrow_back)),
                  Container(
                    height: 60,
                    width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2, color: Colors.black)),
                      child: const Icon(Icons.arrow_back)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
