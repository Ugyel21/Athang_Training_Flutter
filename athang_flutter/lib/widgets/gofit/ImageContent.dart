import 'package:flutter/material.dart';

class ImageContents extends StatelessWidget {
  const ImageContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 2, color: Colors.blue))),
          child: const Text(
            'See how it work',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
