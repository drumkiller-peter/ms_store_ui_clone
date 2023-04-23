# Microsoft Store UI Clone Project with Flutter

## Project Overview

**The project includes:**

- Creating a landing page that displays the featured products
- Remove the classic maximize, minimize, and close status bar and make custom status bar.
- Implementing Responsiveness using Layout Builder.
- The UI will be designed to closely match the Microsoft Store UI.
- Change the title name when hovered to the app on the bottom windows task bar.

## Getting Started

To run this project, you will need to have Flutter and MS Visual Studio set up on your local machine.
**(_Note: The app is configured for windows only._)**

- Clone the repository to your local machine using Git.
- Open the project folder in your code editor.
- Run **flutter pub get** to install the project dependencies.
- Run **flutter run** to launch the app on your device or emulator.

## Necessary changes in code you need to know

- Add **_bitsdojo_window_** package in **_pubspec.yaml_**
- Add these lines in main.cpp file **[windows>runner>main.cpp]**
  ```
  #include <bitsdojo_window_windows/bitsdojo_window_plugin.h>
  auto bdw = bitsdojo_window_configure(BDW_CUSTOM_FRAME | BDW_HIDE_ON_STARTUP);
  ```
- package link: **https://pub.dev/packages/bitsdojo_window**
- Youtube explanation: **https://www.youtube.com/watch?v=bee2AHQpGK4**
