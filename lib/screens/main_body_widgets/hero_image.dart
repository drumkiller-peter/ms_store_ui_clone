import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_store_ui_clone/constants/app_constants.dart';
import 'package:ms_store_ui_clone/controller/hero_controller.dart';

class HeroImageWidget extends StatelessWidget {
  const HeroImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var heroController = Get.find<MyHeroController>();

    return PageView.builder(
      controller: heroController.pageController,
      onPageChanged: (c) {
        heroController.animateToPageIndex(c);
      },
      scrollDirection: Axis.horizontal,
      itemCount: heroController.itemsList.length,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Obx(
              () => Image.asset(
                heroController
                    .itemsList[heroController.currentIndex.value].imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: AppConstants.heroImageBgGradient,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
