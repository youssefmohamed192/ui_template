import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';

class MyContainerBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 82,
      decoration: BoxDecoration(
          color: AppColors.blueGray, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppAssets.heartIcon),
                          const Text(
                            "Heart Rate",
                            style: AppTheme.imageLabelStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("81",
                              style: AppTheme.containerLabelStyle
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const Text(
                            "BPM",
                            style: AppTheme.containerLabelStyle,
                          )
                        ],
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 38,
              width: 4,
              child: VerticalDivider(
                color: AppColors.accent,
                thickness: 2.0,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppAssets.listIcon),
                          const Text(
                            "To-do",
                            style: AppTheme.imageLabelStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("32,5",
                              style: AppTheme.containerLabelStyle
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const Text(
                            "%",
                            style: AppTheme.containerLabelStyle,
                          )
                        ],
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 38,
              width: 4,
              child: VerticalDivider(
                color: AppColors.accent,
                thickness: 2.0,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppAssets.frameIcon),
                          const Text(
                            "Calo",
                            style: AppTheme.imageLabelStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("1000",
                              style: AppTheme.containerLabelStyle
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const Text(
                            "cal",
                            style: AppTheme.containerLabelStyle,
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
