import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:get/get.dart';
import 'package:ms_store_ui_clone/controller/hero_controller.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class HeroImageDetails extends StatelessWidget {
  const HeroImageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var heroController = Get.find<MyHeroController>();
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              "\$${heroController.itemsList[heroController.currentIndex.value].price}",
              style: textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 16,
            ),
            AppText(
              heroController.itemsList[heroController.currentIndex.value].title,
              style: textTheme.headlineLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            AppText(
              heroController
                  .itemsList[heroController.currentIndex.value].description,
              style: textTheme.displaySmall?.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 24,
            ),
            Button(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: AppText("Get Details"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
