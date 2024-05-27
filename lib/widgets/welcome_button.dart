import 'package:flutter/material.dart';
class WelcomeButton extends StatelessWidget {
  const WelcomeButton(
      {super.key,
      this.buttonText,
      this.textColor,
      this.buttonColor,
      this.buttonPadding,
      this.activeScreen});

  final Color? buttonColor;
  final String? buttonText;
  final Color? textColor;
  final EdgeInsetsGeometry? buttonPadding;
  final Widget? activeScreen;
  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => activeScreen!,
          ),
        );
      },
      child: Container(
        padding: buttonPadding!,
        decoration: BoxDecoration(
          color: buttonColor!,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
          ),
        ),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:30,
            fontWeight: FontWeight.bold,
            color: textColor!,
          ),
        ),
      ),
    );
  }
}
