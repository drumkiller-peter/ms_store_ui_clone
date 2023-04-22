import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:ms_store_ui_clone/screens/home.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    const initialSize = Size(800, 600);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    // appWindow.title = "MS Store UI Clone";
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      darkTheme: FluentThemeData(
        scaffoldBackgroundColor: Colors.red.light,
        accentColor: Colors.transparent.toAccentColor(),
        brightness: Brightness.dark,
        activeColor: Colors.green.light,
        focusTheme: FocusThemeData(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          primaryBorder: BorderSide(
            color: Colors.red.normal,
          ),
        ),
      ),
      theme: FluentThemeData(
        scaffoldBackgroundColor: Colors.red.light,
        accentColor: Colors.transparent.toAccentColor(),
        brightness: Brightness.dark,
        focusTheme: FocusThemeData(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          primaryBorder: BorderSide(
            color: Colors.red.normal,
          ),
        ),
      ),
      home: WindowBorder(color: Colors.transparent, child: const HomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
