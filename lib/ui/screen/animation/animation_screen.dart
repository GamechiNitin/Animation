import 'package:flutter/material.dart';

import 'data/animation_model.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.withOpacity(0.8),
        title: const Text(
          'Animation',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
            letterSpacing: 0.8,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: animationList.length,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => animationList[index].navigator,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: animationList[index].color ??
                        Colors.deepOrange.withOpacity(0.2),
                  ),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      animationList[index].name,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
