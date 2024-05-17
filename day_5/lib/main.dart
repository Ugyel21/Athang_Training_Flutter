import 'package:day_5/screens/ToDoHome.dart';
import 'package:day_5/screens/tasks/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Login(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const ToDohome(),
      },
    );
  }
}