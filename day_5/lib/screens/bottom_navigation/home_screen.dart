import 'package:flutter/material.dart';

import '../../utils/styles/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/custom.png', height: 300,
        width: double.infinity,),
        Text(
        'Home',
        style: kScreenTitles,
      ),
      ],
    );
  }
}