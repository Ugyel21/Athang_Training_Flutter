import 'package:flutter/material.dart';

class ToDohome extends StatefulWidget {
  const ToDohome({super.key});

  @override
  State<ToDohome> createState() => _ToDohomeState();
}

class _ToDohomeState extends State<ToDohome> {
  String title = "Hello";

  num count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}