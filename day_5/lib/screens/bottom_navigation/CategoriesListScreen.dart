import 'package:flutter/material.dart';

import '../../utils/styles/text_styles.dart';

class CategoriesListScreen extends StatelessWidget {
  const CategoriesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'CategoriesList',
          style: kScreenTitles,
        ),
      ),
    );
  }
}