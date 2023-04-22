import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:ms_store_ui_clone/models/top_free_app_model.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class TopFreeApps extends StatelessWidget {
  const TopFreeApps({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    var topFreeAppsList = [
      TopFreeAppModel(
          appName: "Spotify",
          category: "Music",
          rating: 4.5,
          downloadCount: "20k",
          imagePath: "assets/app_logos/spotify.png"),
      TopFreeAppModel(
          appName: "Whatsapp",
          category: "Social",
          rating: 4.7,
          downloadCount: "220k",
          imagePath: "assets/app_logos/whatsapp.png"),
      TopFreeAppModel(
          appName: "iTunes",
          category: "Music",
          rating: 2,
          downloadCount: "20k",
          imagePath: "assets/app_logos/itunes.png"),
      TopFreeAppModel(
          appName: "iCloud",
          category: "Productivity",
          rating: 3.5,
          downloadCount: "20k",
          imagePath: "assets/app_logos/icloud.png"),
      TopFreeAppModel(
          appName: "TikTok",
          category: "Social",
          rating: 2.5,
          downloadCount: "20k",
          imagePath: "assets/app_logos/tiktok.png"),
      TopFreeAppModel(
          appName: "Netflix",
          category: "Entertainment",
          rating: 4,
          downloadCount: "20k",
          imagePath: "assets/app_logos/netflix.png"),
    ];
    return LayoutBuilder(
      builder: (c, d) => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: d.maxWidth),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisExtent: 100,
              mainAxisSpacing: 20,
              crossAxisCount: d.maxWidth > 1000
                  ? 3
                  : d.maxWidth < 650
                      ? 1
                      : 2,
            ),
            itemCount: topFreeAppsList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      topFreeAppsList[index].imagePath,
                      // height: 200,
                      width: 100,
                      // fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(topFreeAppsList[index].appName),
                        AppText(
                          topFreeAppsList[index].category,
                          style: textTheme.bodySmall,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            RatingBar(
                              rating: topFreeAppsList[index].rating,
                              ratedIconColor: Colors.white.withOpacity(0.8),
                              icon: Icons.star_purple500_outlined,
                              iconSize: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            AppText(
                              topFreeAppsList[index].downloadCount,
                              style:
                                  textTheme.bodySmall?.copyWith(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Button(
                        child: AppText(index.isEven ? "Installed" : "Free"),
                        onPressed: () {}),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
