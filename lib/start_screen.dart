import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            height: 380,
            width: 280,
            color: const Color.fromARGB(120, 250, 250, 250),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("Learn Flutter the fun way",
              style: TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      )),
    );
  }
}
