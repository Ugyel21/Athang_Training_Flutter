import 'package:athang_flutter/widgets/discovery/ForContentCard.dart';
import 'package:flutter/material.dart';

class ForContentsContainer extends StatelessWidget {
  const ForContentsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2023/08/05/14/24/twilight-8171206_1280.jpg",
            title: "Twilight, Bridge",
            description: "Sponsored Images iStock LIMITED.",
          ),
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2022/05/04/09/13/bordeaux-7173548_1280.jpg",
            title: "Teide",
            description: "Tenerife, SPN",
          ),
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
            title: "Teide",
            description: "Tenerife, SPN",
          ),
          ForContentCard(
            url: "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
            title: "Teide",
            description: "Tenerife, SPN",
          ),
        ],
      ),
    );
  }
}
