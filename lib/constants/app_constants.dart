import 'package:fluent_ui/fluent_ui.dart';

class AppConstants {
  AppConstants._();

  static Gradient darkGradient = LinearGradient(
    colors: [
      Colors.grey[210],
      Colors.black.withOpacity(0.5),
      Colors.black.withOpacity(0.9),
    ],
  );
  static Gradient heroImageBgGradient = LinearGradient(
    colors: [
      Colors.black,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.black.withOpacity(0.9),
    ],
  );
}
