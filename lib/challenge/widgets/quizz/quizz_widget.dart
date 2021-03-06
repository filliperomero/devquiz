import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizzWidget extends StatelessWidget {
  final String title;
  const QuizzWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnswerWidget(
            title: "Kit de desenvolvimento de interface de usuário",
            isSelected: true,
            isCorrect: false,
          ),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compilados nativamente"),
          AnswerWidget(title: "Acho que é uma marca de café do Himalaia"),
          AnswerWidget(
              title:
                  "Possibilita a criação de desktops que são muito incríveis"),
        ],
      ),
    );
  }
}
