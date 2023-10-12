import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final String description;

  ImageCard(
      {required this.imagePath,
      required this.backgroundColor,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundColor: AppColors.accent,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description,
          style: AppTheme.imageLabelStyle,
        )
      ],
    );
  }
}
