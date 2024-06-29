import 'package:flutter/material.dart';
import 'package:flutter_console/ui/screen/animation/animation_screen.dart';
import 'ui/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Console',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent.shade100,
        ),
      ),
      home: const AnimationScreen(),
    );
  }
}
