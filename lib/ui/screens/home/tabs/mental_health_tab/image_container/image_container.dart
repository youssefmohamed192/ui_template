import 'package:flutter/material.dart';
import 'package:ui_template/ui/screens/home/tabs/mental_health_tab/image_container/image_card.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageCard(
                imagePath: AppAssets.loveImage,
                backgroundColor: AppColors.accent,
                description: "Love"),
            ImageCard(
                imagePath: AppAssets.coolImage,
                backgroundColor: AppColors.accent,
                description: "Cool"),
            ImageCard(
                imagePath: AppAssets.happyImage,
                backgroundColor: AppColors.accent,
                description: "happy"),
            ImageCard(
                imagePath: AppAssets.sadImage,
                backgroundColor: AppColors.accent,
                description: "Sad"),
          ],
        ));
  }
}
