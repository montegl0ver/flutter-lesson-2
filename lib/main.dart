import 'package:flutter/material.dart';
import 'package:lesson_flutter_1/model/user.dart';
import 'package:lesson_flutter_1/user/presentation/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Akylai was here :3'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    User user = User(firstName: "Akylai", lastName: "Abdykanova");

    return Scaffold(
      backgroundColor: const Color(0xFFFFE4EC),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 255, 126, 169),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("gotcha!");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 126, 169),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: const Text(
            "click me",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
