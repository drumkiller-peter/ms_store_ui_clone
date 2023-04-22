import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class WindowButtons extends StatelessWidget {
  const WindowButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var windowButtonColor = WindowButtonColors(
      iconNormal: Colors.white,
      mouseOver: Colors.blueAccent,
    );
    return Row(
      children: [
        MinimizeWindowButton(
          colors: windowButtonColor,
        ),
        MaximizeWindowButton(
          colors: windowButtonColor,
        ),
        IconButton(
          splashRadius: 5,
          hoverColor: Colors.redAccent,
          onPressed: () => exit(0),
          icon: const Center(
            child: Icon(
              Icons.close_sharp,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
