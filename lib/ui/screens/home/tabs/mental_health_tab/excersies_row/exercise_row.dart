import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';

class ExerciseContainer extends StatelessWidget {
  String imagePath;
  String title;
  Color background;

  ExerciseContainer(
      {required this.imagePath, required this.title, required this.background});

  @override
  Widget build(BuildContext context) {
    return buildExerciseRow();
  }

  Widget buildExerciseRow() {
    return Container(
      height: 56,
      width: 170,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imagePath,width: 24,height: 28),
          Text(title,
              style: AppTheme.carouselContainerTextStyle.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
