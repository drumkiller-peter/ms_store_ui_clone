import 'package:flutter/material.dart' hide Colors;
import 'package:ms_store_ui_clone/constants/app_colors.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: AppColors.bgColor,
      selectedIndex: 0,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home_filled),
          label: AppText("Home"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.dashboard_rounded),
          label: AppText("Apps"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.games_rounded),
          label: AppText("Games"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.movie_creation),
          label: AppText("Movies and TV"),
        ),
      ],
    );
  }
}
