import 'package:athang_flutter/widgets/discovery/ForContentsContainer.dart';
import 'package:athang_flutter/widgets/discovery/ForYouHeader.dart';
import 'package:flutter/material.dart';

class ForContainer extends StatelessWidget {
  const ForContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          ForYouHeader(),
          ForContentsContainer()
        ],
      ),
    );
  }
}