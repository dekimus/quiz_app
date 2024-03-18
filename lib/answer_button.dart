import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});
  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              elevation: 5,
              backgroundColor: const Color.fromARGB(180, 84, 2, 99),
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder()),
          child: Text(
            answer,
            style: GoogleFonts.firaCode(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
