// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:ms_store_ui_clone/models/top_free_app_model.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class DescriptionTileWidget extends StatelessWidget {
  const DescriptionTileWidget({
    Key? key,
    required this.constraintHeight,
    required this.constraintWidth,
    required this.topFreeAppModel,
  }) : super(key: key);

  final double constraintHeight;
  final double constraintWidth;

  final TopFreeAppModel topFreeAppModel;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              topFreeAppModel.imagePath,
              height: constraintHeight * 0.25,
              width: constraintWidth,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: constraintHeight * 0.01,
          ),
          AppText(
            topFreeAppModel.appName,
            maxLines: 3,
          ),
          SizedBox(
            height: constraintHeight * 0.01,
          ),
          Row(
            children: [
              RatingBar(
                rating: topFreeAppModel.rating,
                ratedIconColor: Colors.white.withOpacity(0.8),
                icon: Icons.star_purple500_outlined,
                iconSize: 16,
              ),
              AppText(
                topFreeAppModel.downloadCount,
                style: textTheme.bodySmall,
              ),
            ],
          ),
          const Spacer(),
          Button(
              child: AppText(
                "Starts at \$99.99",
                style: textTheme.labelMedium,
              ),
              onPressed: () {}),
          // const SizedBox(
          //   height: 4,
          // ),
        ],
      ),
    );
  }
}
