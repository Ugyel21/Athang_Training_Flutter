import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network('https://cdn.pixabay.com/photo/2024/05/14/10/51/ai-generated-8760871_1280.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity,),
            Container(
              
              height: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}