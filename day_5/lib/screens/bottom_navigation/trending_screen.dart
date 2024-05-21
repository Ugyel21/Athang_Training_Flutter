import 'package:flutter/material.dart';

import '../../utils/styles/text_styles.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Trending', style: kScreenTitles),
      ),
    );
  }
}