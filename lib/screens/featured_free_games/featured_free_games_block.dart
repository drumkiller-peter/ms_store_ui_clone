// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:ms_store_ui_clone/models/top_free_app_model.dart';
import 'package:ms_store_ui_clone/screens/widgets/description_tile.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class FeaturedFreeGamesBlock extends StatelessWidget {
  const FeaturedFreeGamesBlock({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    var featuredGames = [
      TopFreeAppModel(
          appName: "Destiny 2",
          category: "Games",
          rating: 4.2,
          downloadCount: "12k",
          imagePath: "assets/destiny2.jpg"),
      TopFreeAppModel(
          appName: "Instant War: Ultimate Warfare",
          category: "Games",
          rating: 4.2,
          downloadCount: "12k",
          imagePath: "assets/war.jpg"),
      TopFreeAppModel(
          appName: "Asphault Legends: 9",
          category: "Games",
          rating: 4.2,
          downloadCount: "12k",
          imagePath: "assets/car.jpg"),
      TopFreeAppModel(
          appName: "Candy Crush Saga",
          category: "Games",
          rating: 4.2,
          downloadCount: "12k",
          imagePath: "assets/cc.jpg"),
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green.lighter,
      ),
      height: height * 0.5,
      width: width - 24,
      child: Stack(
        children: [
          Image.asset(
            "assets/greenbg.jpg",
            height: height,
            width: width,
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "Featured FreeGames",
                        style: textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const AppText(
                        "Explore free fun to play games and find a new route",
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Button(child: const AppText("See All"), onPressed: () {}),
                    ],
                  ),
                ),
              ),
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 3,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 12,
                        ),
                    itemCount: featuredGames.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: DescriptionTileWidget(
                            constraintHeight: height,
                            constraintWidth: width,
                            topFreeAppModel: featuredGames[index],
                          ),
                        )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
