import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';

class MentalHealthTab extends StatefulWidget {

  @override
  State<MentalHealthTab> createState() => _MentalHealthTabState();
}

class _MentalHealthTabState extends State<MentalHealthTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * .09),
            child:  const Row(
              children: [
                Text("Hello, ",style: AppTheme.screenTextStyle,),
                Text(" Sara Rose",style: AppTheme.screenBoldTextStyle,)
              ],
            ),
          ),
          const Text("How are you feeling today ?",style: AppTheme.screenTextStyle,),

        ],
      ),
    );
  }

  PreferredSizeWidget buildAppBar() => AppBar(
    toolbarHeight: MediaQuery.of(context).size.height * 0.15, // Use size.height here
    leading: const ImageIcon(AssetImage(AppAssets.logoIcon), color: AppColors.green),
    title: const Text("Moody", style: AppTheme.appBarTitleTextStyle),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.015),
        child: IconButton(
          icon: const Icon(
            Icons.notification_important_outlined,
            color: AppColors.black,
          ),
          onPressed: () {},
        ),
      ),
    ],
    backgroundColor: AppColors.primary,
    elevation: 0,
  );


}
