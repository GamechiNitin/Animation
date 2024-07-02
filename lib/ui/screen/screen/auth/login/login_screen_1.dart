import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1>
    with SingleTickerProviderStateMixin {
  late Animation<double> fade;
  late Animation<double> scale;
  late AnimationController controller;
  late Animation<Offset> slide;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    fade = Tween<double>(begin: 0, end: 1).animate(controller);
    scale = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));
    slide = Tween<Offset>(begin: const Offset(-1, -1), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: fade,
                child: const FlutterLogo(
                  size: 150,
                ),
              ),
              SlideTransition(
                position: slide,
                child: ScaleTransition(
                  scale: scale,
                  child: Column(
                    children: [
                      const TextField(
                          decoration: InputDecoration(labelText: 'Email')),
                      const TextField(
                          decoration: InputDecoration(labelText: 'Password')),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Log in'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
