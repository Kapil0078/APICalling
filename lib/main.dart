import 'package:api_calling/BasicLevel/api_calling_1.dart';
import 'package:api_calling/HelperFunction/my_nevigation.dart';
import 'package:api_calling/Intermediate/API3/api_3_home.dart';
import 'package:flutter/material.dart';

import 'BasicLevel/api_calling_2.dart';
import 'Intermediate/API4/api_4_home.dart';
import 'Intermediate/API5/api_5_home.dart';
import 'Intermediate/API6/api_6_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.brown.shade500),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown.shade300,
          elevation: 0.0,
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Calling"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                nextScreen(
                  context,
                  const APICalling1(),
                );
              },
              child: const Text("API-1"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                nextScreen(
                  context,
                  const APICalling2(),
                );
              },
              child: const Text("API-2"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                nextScreen(
                  context,
                  const API3Home(),
                );
              },
              child: const Text("API-3"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                nextScreen(
                  context,
                  const API4Home(),
                );
              },
              child: const Text("API-4"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                nextScreen(
                  context,
                  const API5Home(),
                );
              },
              child: const Text("API-5"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                nextScreen(
                  context,
                  const API6Home(),
                );
              },
              child: const Text("API-6"),
            ),
          ],
        ),
      ),
    );
  }
}
