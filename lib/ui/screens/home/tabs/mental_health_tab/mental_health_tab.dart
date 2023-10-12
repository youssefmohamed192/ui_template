import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_template/providers/carousel_provider.dart';
import 'package:ui_template/ui/screens/home/tabs/mental_health_tab/excersies_row/exercise_row.dart';
import 'package:ui_template/ui/screens/home/tabs/mental_health_tab/image_container/image_container.dart';
import 'package:ui_template/utils/app_assets.dart';
import 'package:ui_template/utils/app_colors.dart';
import 'package:ui_template/utils/app_theme.dart';
import 'package:ui_template/widgets/build_my_row.dart';

class MentalHealthTab extends StatefulWidget {
  @override
  State<MentalHealthTab> createState() => _MentalHealthTabState();
}

class _MentalHealthTabState extends State<MentalHealthTab> {
  final PageController pageController = PageController();
  final controller = PageController(viewportFraction: 0.8);
  final List<String> pageTitles = [
    "Positive vibes",
    "Positive vibes",
    "Positive vibes"
  ];
  final String pageImage = AppAssets.characterImage;
  final List<Color> backgroundColors = [
    AppColors.featureColor,
    AppColors.breathingContainer,
    AppColors.meditationContainer
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * .09),
            child: const Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: AppTheme.screenTextStyle,
                    ),
                    Text(
                      " Sara Rose",
                      style: AppTheme.screenBoldTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "How are you feeling today ?",
                      style: AppTheme.screenTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ImageContainer(),
          const SizedBox(
            height: 24,
          ),
          BuildMyRow(
              title: "Feature",
              subTitle: "See more",
              color: AppColors.darkGreen),
          SizedBox(
            height: 168,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                context.read<PageIndexProvider>().setCurrentIndex(index);
              },
              itemCount: pageTitles.length,
              itemBuilder: (context, index) {
                return buildPageContent(index);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              controller: controller,
              count: pageTitles.length,
              effect: const SlideEffect(
                dotColor: Colors.grey,
                activeDotColor: AppColors.green,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          BuildMyRow(
              title: "Exercise",
              subTitle: "See more",
              color: AppColors.darkGreen),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ExerciseContainer(
                  imagePath: AppAssets.relaxationIcon,
                  title: "Relaxation",
                  background: AppColors.relaxationContainer),
              ExerciseContainer(
                  imagePath: AppAssets.meditationIcon,
                  title: "Meditation",
                  background: AppColors.meditationContainer)
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ExerciseContainer(
                  imagePath: AppAssets.breathingIcon,
                  title: "Breathing",
                  background: AppColors.breathingContainer),
              ExerciseContainer(
                  imagePath: AppAssets.yogaIcon,
                  title: "Yoga",
                  background: AppColors.yogaContainer)
            ],
          )
        ],
      ),
    );
  }

  PreferredSizeWidget buildAppBar() => AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        title:  Row(
          children: [
            Image.asset(AppAssets.logoIcon,height: 48,width: 48),
            SizedBox(
              width: 8,
            ),
            Text("Moody", style: AppTheme.appBarTitleTextStyle),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.02,
                top: MediaQuery.of(context).size.width * 0.07),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 13, end: 13),
              showBadge: true,
              ignorePointer: false,
              badgeStyle: badges.BadgeStyle(
                  badgeColor: AppColors.red,
                  shape: badges.BadgeShape.circle,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 4,
                  padding: const EdgeInsets.all(4)),
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

  Widget buildPageContent(int index) {
    int currentIndex = context.watch<PageIndexProvider>().currentIndex;
    bool isVisible = index == currentIndex;
    Color backgroundColor = backgroundColors[index];

    return Visibility(
      visible: isVisible,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pageTitles[currentIndex],
                        style: AppTheme.carouselContainerTextStyle.copyWith(
                            color: AppColors.containerTitleColor,
                            fontWeight: FontWeight.bold)),
                    // const SizedBox(
                    //   height: 14,
                    // ),
                    const Text("Boost your mood with positive vibes",
                        style: AppTheme.carouselContainerTextStyle),
                    // const Text("positive vibes",
                    //     style: AppTheme.carouselContainerTextStyle),
                    // const SizedBox(
                    //   height: 14,
                    // ),
                    const Row(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: AppColors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("10 min")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Image.asset(pageImage, height: 90, width: 102),
            ),
          ],
        ),
      ),
    );
  }

// Widget buildMyRow(String title) {
//   Size size = MediaQuery.of(context).size;
//   return Row(
//     children: [
//       Container(
//         padding: EdgeInsets.symmetric(horizontal: size.width * 0.09),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: AppTheme.carouselContainerTextStyle
//                   .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//       const Spacer(),
//       TextButton(
//         onPressed: () {},
//         child: Row(
//           children: [
//             Text(
//               "See more",
//               style: AppTheme.carouselContainerTextStyle
//                   .copyWith(fontSize: 14, color: AppColors.darkGreen),
//             ),
//             const Icon(
//               Icons.arrow_forward_ios,
//               color: AppColors.darkGreen,
//               size: 16,
//             ),
//             const SizedBox(
//               width: 32,
//             )
//           ],
//         ),
//       ),
//     ],
//   );
// }
}
