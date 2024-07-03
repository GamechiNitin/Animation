import 'package:flutter/material.dart';
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
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          // backgroundColor: Colors.white,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
