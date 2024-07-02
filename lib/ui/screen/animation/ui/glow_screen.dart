import 'package:flutter/material.dart';

class GlowScreen extends StatelessWidget {
  const GlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          'Glow Animation',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
            letterSpacing: 0.8,
            fontSize: 16,
          ),
        ),
      ),
      body: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 1500),
        tween: Tween(begin: 0.0, end: 180.0),
        builder: (context, size, _) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size,
                width: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(.5),
                      blurRadius: size,
                      spreadRadius: size / 2,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
