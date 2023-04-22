import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:ms_store_ui_clone/constants/app_colors.dart';
import 'package:ms_store_ui_clone/screens/main_body_block.dart';
import 'package:ms_store_ui_clone/screens/widgets/side_nav.dart';
import 'package:ms_store_ui_clone/screens/widgets/windows_button.dart';
import 'package:ms_store_ui_clone/utils/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          Container(
            color: AppColors.bgColor,
            height: kToolbarHeight - 10,
            child: WindowTitleBarBox(
              child: MoveWindow(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      "assets/logo.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: AppText(
                        "Microsoft store",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(top: 4),
                        child: const TextBox(
                          placeholder:
                              "Search apps, games, and movies, and more",
                        ),
                      ),
                    ),
                    const Spacer(),
                    const WindowButtons()
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                SideNavBar(),
                MainBodyBlock(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
