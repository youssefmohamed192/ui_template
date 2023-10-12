import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';

class BuildMyRow extends StatelessWidget {
  String title;
  String subTitle;
  Color color;

  BuildMyRow(
      {required this.title, required this.subTitle, required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTheme.carouselContainerTextStyle
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                subTitle,
                style: AppTheme.carouselContainerTextStyle
                    .copyWith(fontSize: 14, color: color),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: color,
                size: 16,
              ),
              const SizedBox(
                width: 32,
              )
            ],
          ),
        ),
      ],
    );
  }
}
