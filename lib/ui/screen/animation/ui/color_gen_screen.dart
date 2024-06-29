import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenScreen extends StatefulWidget {
  const ColorGenScreen({super.key});

  @override
  State<ColorGenScreen> createState() => _ColorGenScreenState();
}

class _ColorGenScreenState extends State<ColorGenScreen> {
  List<Color> colorList = fetchColor();

  static List<Color> fetchColor() {
    final rand = Random();
    return List.generate(
      10,
      (index) => Color.fromRGBO(
        rand.nextInt(256),
        rand.nextInt(256),
        rand.nextInt(256),
        0.9,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Color Pallers GenZ',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
            letterSpacing: 0.8,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: colorList.length,
              itemBuilder: (_, index) => AnimatedContainer(
                duration: const Duration(milliseconds: 1500),
                height: 100,
                width: 100,
                padding: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: colorList[index],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.read_more),
        onPressed: () {
          setState(() {
            colorList = fetchColor();
          });
        },
      ),
    );
  }
}
