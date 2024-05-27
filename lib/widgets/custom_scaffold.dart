import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Color.fromARGB(87, 47, 41, 41),
                BlendMode.darken,
              ),
              image: AssetImage(
                'assets/images/Mask Group.png',
              ),
              fit: BoxFit.cover),
        ),
        child: child!,
      ),
    );
  }
}
