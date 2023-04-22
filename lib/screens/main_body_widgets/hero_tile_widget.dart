import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:get/get.dart';
import 'package:ms_store_ui_clone/constants/app_constants.dart';
import 'package:ms_store_ui_clone/controller/hero_controller.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class HeroTileWidget extends StatelessWidget {
  const HeroTileWidget({
    Key? key,
    required this.listViewIndex,
    required this.isHoveredIndex,
    required this.isCurrentIndex,
  }) : super(key: key);

  final int listViewIndex;
  final bool isHoveredIndex;
  final bool isCurrentIndex;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var heroController = Get.find<MyHeroController>();
    return InkWell(
      onTap: () {
        heroController.onTilePressed(listViewIndex);
      },
      onHover: (val) {
        heroController.onHover(listViewIndex, val);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 224,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: isHoveredIndex || isCurrentIndex
                  ? Border.all(
                      color: Colors.blue.light,
                      width: 4,
                    )
                  : null),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Image.asset(
                  heroController.itemsList[listViewIndex].imagePath,
                  fit: BoxFit.fill,
                ),
                isHoveredIndex || isCurrentIndex
                    ? Container(
                        decoration: BoxDecoration(
                          gradient: AppConstants.heroImageBgGradient,
                        ),
                      )
                    : const SizedBox(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: AppText(
                      isHoveredIndex || isCurrentIndex
                          ? heroController.itemsList[listViewIndex].title
                          : "",
                      style: textTheme.headlineSmall?.copyWith(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
