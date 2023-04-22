import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:get/get.dart';
import 'package:ms_store_ui_clone/controller/hero_controller.dart';
import 'package:ms_store_ui_clone/screens/main_body_widgets/hero_image.dart';
import 'package:ms_store_ui_clone/screens/main_body_widgets/hero_image_details.dart';
import 'package:ms_store_ui_clone/screens/main_body_widgets/hero_tile_widget.dart';
import 'package:ms_store_ui_clone/screens/top_free_apps/top_free_apps_block.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class MainBodyBlock extends StatelessWidget {
  const MainBodyBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    MyHeroController heroController = Get.put(MyHeroController());

    return Expanded(
      child: LayoutBuilder(
        builder: (p0, constraints) {
          final maxWidth = constraints.maxWidth;
          final isLargeScreen = maxWidth >= 900;
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: constraints.maxWidth * 0.46,
                        child: const HeroImageWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, top: 32),
                        child: AppText(
                          "Home",
                          style: textTheme.headlineSmall
                              ?.copyWith(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      !isLargeScreen
                          ? const SizedBox()
                          : Positioned(
                              top: constraints.maxHeight * 0.25,
                              child: const HeroImageDetails(),
                            ),
                      Positioned(
                        bottom: 0,
                        child: SizedBox(
                          height: 132,
                          width: constraints.maxWidth,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 12,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: heroController.itemsList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, listViewIndex) => Obx(
                              () => HeroTileWidget(
                                isCurrentIndex:
                                    heroController.currentIndex.value ==
                                        listViewIndex,
                                isHoveredIndex:
                                    heroController.hoveredIndex.value ==
                                        listViewIndex,
                                listViewIndex: listViewIndex,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: constraints.maxHeight * 0.1,
                      child: Row(
                        children: [
                          AppText(
                            "Top free apps",
                            style: textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const Spacer(),
                          AppText(
                            "See all",
                            style: textTheme.bodyMedium?.copyWith(
                              color: Colors.blue.lighter,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: constraints.maxHeight * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: TopFreeApps(
                        value: constraints.maxWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
