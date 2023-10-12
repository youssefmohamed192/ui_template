import 'package:flutter/material.dart';
import 'package:ui_template/ui/screens/home/tabs/workout_tab/custom_tab_contnet.dart';
import 'package:ui_template/ui/screens/home/tabs/workout_tab/my_container.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';
import 'package:badges/badges.dart' as badges;

class WorkoutTab extends StatefulWidget {
  @override
  State<WorkoutTab> createState() => _WorkoutTabState();
}

class _WorkoutTabState extends State<WorkoutTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              MyContainerBuilder(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Workout Programs",
                    style: AppTheme.carouselContainerTextStyle
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: TabBar(
                  isScrollable: true,
                  labelStyle: AppTheme.carouselContainerTextStyle
                      .copyWith(fontWeight: FontWeight.bold),
                  labelColor: AppColors.containerTitleColor,
                  indicatorColor: AppColors.containerTitleColor,
                  tabs: const [
                    Tab(
                      text: "All Type",
                    ),
                    Tab(text: "Full Body"),
                    Tab(text: "Upper"),
                    Tab(text: "Lower"),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: TabBarView(
                  children: [
                    MYTabContent(),
                    MYTabContent(),
                    MYTabContent(),
                    MYTabContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.12,
      title: Row(
        children: [
          Image.asset(AppAssets.appBarImage),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello, Jade",
                    style: AppTheme.appBarTitleTextStyle
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Ready to workout?",
                    style: AppTheme.appBarTitleTextStyle
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.02,
            top: MediaQuery.of(context).size.width * 0.07,
          ),
          child: badges.Badge(
            position: badges.BadgePosition.topEnd(top: 13, end: 13),
            showBadge: true,
            ignorePointer: false,
            badgeStyle: badges.BadgeStyle(
              badgeColor: AppColors.red,
              shape: badges.BadgeShape.circle,
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              padding: const EdgeInsets.all(4),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: AppColors.black,
                size: 24,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
      backgroundColor: AppColors.primary,
      elevation: 0,
    );
  }
}
