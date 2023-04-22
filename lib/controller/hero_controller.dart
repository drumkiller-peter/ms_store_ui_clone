import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_store_ui_clone/models/hero_data.dart';

class MyHeroController extends GetxController {
  late PageController? pageController;
  late Timer? t;

  @override
  void onInit() {
    initializeTimerController();
    super.onInit();
  }

  @override
  void onClose() {
    t?.cancel();
    pageController?.dispose();
    super.onClose();
  }

  RxInt currentIndex = 0.obs;
  var hoveredIndex = 0.obs;

  List<HeroDataClass> itemsList = [
    HeroDataClass(
        title: "Red fall bite back Edition",
        price: "99.99",
        description: "Don't Fall Back",
        imagePath: "assets/8.jpg"),
    HeroDataClass(
        title: "Snipe them",
        price: "101.99",
        description: "Hell is uncertain for some scums",
        imagePath: "assets/9.jpg"),
    HeroDataClass(
        title: "Realm of Twilight",
        price: "44.99",
        description:
            "A world of spirits and ghosts, existing between life and death.",
        imagePath: "assets/10.jpg"),
    HeroDataClass(
        title: "Arcane Dominion",
        price: "102.99",
        description:
            " A land of magic and mystery, ruled by powerful sorcerers.",
        imagePath: "assets/4.jpg"),
    HeroDataClass(
        title: "Elemental Forest",
        price: "78.44",
        description: "Where darkness reigns supreme.",
        imagePath: "assets/5.jpg"),
    HeroDataClass(
        title: "Embrace the darkness.",
        price: "36.99",
        description:
            "Don't let her go. This is the most tiring task of the day",
        imagePath: "assets/6.jpg"),
    HeroDataClass(
        title: "Lost City of Atlantis",
        price: "82.17",
        description: "Let it consume you",
        imagePath: "assets/1.jpg"),
  ];

  void initializeTimerController() {
    pageController = PageController(initialPage: currentIndex.value);
    t = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        if (currentIndex.value == itemsList.length - 1) {
          currentIndex.value = 0;
          animateToPageIndex(currentIndex.value);
        } else {
          currentIndex.value++;
          animateToPageIndex(currentIndex.value);
        }
      },
    );
  }

  void animateToPageIndex(int index) {
    pageController?.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  void onHover(int hoveredIndex, bool isHovered) {
    if (isHovered) {
      this.hoveredIndex.value = hoveredIndex;
    } else {
      this.hoveredIndex.value = -1;
    }
  }

  void onTilePressed(int index) {
    currentIndex.value = index;
    animateToPageIndex(currentIndex.value);
  }
}
