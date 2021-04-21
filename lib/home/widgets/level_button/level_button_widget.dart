import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({
    Key? key,
    required this.label,
  })   : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonTextFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "background": AppColors.levelButtonFacil
    },
    "Médio": {
      "color": AppColors.levelButtonTextMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "background": AppColors.levelButtonMedio
    },
    "Difícil": {
      "color": AppColors.levelButtonTextDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "background": AppColors.levelButtonDificil
    },
    "Perito": {
      "color": AppColors.levelButtonTextPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "background": AppColors.levelButtonPerito
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get background => config[label]!['background']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        border: Border.fromBorderSide(
          BorderSide(color: borderColor),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: color,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
