import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';

class MYTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          height: 170,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColors.accent, borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          index == 0 || index == 2 ? "7 days" : "3 days",
                          style: AppTheme.carouselContainerTextStyle
                              .copyWith(fontWeight: FontWeight.bold),
                        )),
                    Text(
                        index == 0 || index == 2
                            ? "Morning Yoga"
                            : "Plank Exercise",
                        style: AppTheme.carouselContainerTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(
                        index == 0 || index == 2
                            ? "Improve mental focus."
                            : "Improve posture and stability.",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.black)),
                    Row(
                      children: [
                        Image.asset(AppAssets.clockIcon,
                            color: AppColors.black),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text("30 mins",
                            style: TextStyle(
                              color: AppColors.black,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(index == 0 || index == 2
                    ? AppAssets.listViewImage
                    : AppAssets.plankImage),
              ),
            ],
          ),
        );
      },
    );
  }
}
