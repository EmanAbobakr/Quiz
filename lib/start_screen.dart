import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.imagePath,
    this.text,
    this.buttonText,
    this.onPressed, {
    super.key,
  });

  final String imagePath;
  final String text;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, bottom: 30),
            child: Text(
              text,
              style: GoogleFonts.lato(
                fontSize: 24,
                color: const Color.fromARGB(255, 237, 223, 252),
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 237, 223, 252),
            ),
            label: Text(
              buttonText,
              style: TextStyle(color: const Color.fromARGB(255, 237, 223, 252)),
            ),
          ),
        ],
      ),
    );
  }
}
