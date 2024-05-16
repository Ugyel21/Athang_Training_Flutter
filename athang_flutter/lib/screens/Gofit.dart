import 'package:athang_flutter/widgets/gofit/Header.dart';
import 'package:athang_flutter/widgets/gofit/ImageContainer.dart';
import 'package:athang_flutter/widgets/gofit/ImageContent.dart';
import 'package:athang_flutter/widgets/gofit/TitleContainer.dart';
import 'package:flutter/material.dart';

class Gotfit extends StatelessWidget {
  const Gotfit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              TitleContainer(),
              ImageContainer(),
              ImageContents(),
              ImageContainer(),
            ],
          ),
        ),
      ),
    );
  }
}