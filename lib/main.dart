import 'package:api_calling/BasicLevel/api_calling_1.dart';
import 'package:api_calling/HelperFunction/my_nevigation.dart';
import 'package:flutter/material.dart';

import 'BasicLevel/api_calling_2.dart';

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
          ],
        ),
      ),
    );
  }
}
