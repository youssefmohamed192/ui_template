import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';
import 'package:ui_template/widgets/build_my_row.dart';

class NewsTab extends StatefulWidget {
  @override
  State<NewsTab> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Articles, Video, Audio and More,...",
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BuildMyRow(
              title: "Hot topics",
              subTitle: "See all",
              color: AppColors.rowPurpleColor),
          Image.asset(AppAssets.hotTopicsImage),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Text("Get Tips",
                    style: AppTheme.carouselContainerTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 196,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(flex: 2, child: Image.asset(AppAssets.doctorImage)),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Connect with doctors & get suggestions",
                          style: AppTheme.carouselContainerTextStyle.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          "Connect now and get expert insights ",
                          style: AppTheme.carouselContainerTextStyle.copyWith(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add the action you want the button to perform here
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 14),
                            primary: AppColors.rowPurpleColor,
                            // Background color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Border radius
                            ),
                          ),
                          child: Text(
                            'View Detail', // Text displayed on the button
                            style: AppTheme.carouselContainerTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.primary),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BuildMyRow(
              title: "Cycle Phases and Period",
              subTitle: "See all",
              color: AppColors.rowPurpleColor),
        ],
      ),
    );
  }

  PreferredSizeWidget buildMyAppBar() => AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.secondAppBarImage),
            const Text(
              "AliceCare",
              style: AppTheme.appBarTitleTextStyle,
            )
          ],
        ),
      );
}
