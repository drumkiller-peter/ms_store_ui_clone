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
      Colors.grey[210],
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.black.withOpacity(0.9),
    ],
  );
}
