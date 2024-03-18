import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: summaryData.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor:
                        data['correct_answer'] == data['user_answer']
                            ? Colors.green
                            : Colors.red,
                    child:
                        Text(((data['question_index'] as int) + 1).toString()),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.firaCode(
                              fontSize: 14, color: Colors.white),
                        ),
                        Text(data['correct_answer'] as String,
                            style: GoogleFonts.firaCode(
                                fontSize: 14,
                                color: const Color.fromARGB(255, 107, 4, 126))),
                        Text(
                          data['user_answer'] as String,
                          style: GoogleFonts.firaCode(
                              fontSize: 14, color: Colors.blue),
                        )
                      ],
                    ),
                  )
                ],
              );
            }).toList()),
      ),
    );
  }
}
