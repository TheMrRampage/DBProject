import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.linkedText,this.activeScreen});
final String? linkedText;
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
      child: Text(linkedText!,style: TextStyle(fontSize: 17,color: Color.fromARGB(
          255, 53, 79, 121)),),
    );
  }
}
