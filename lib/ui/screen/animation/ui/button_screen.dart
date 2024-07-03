import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Button Animation',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
            letterSpacing: 0.8,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 900),
              height: 60,
              curve: Curves.ease,
              width: isExpanded ? 200 : 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(isExpanded ? 300 : 8),
                ),
                color: isExpanded ? Colors.lightGreen : Colors.redAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isExpanded ? Icons.shopping_basket : Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                  if (isExpanded) const SizedBox(width: 8),
                  if (isExpanded)
                    const Text(
                      'Filled',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
