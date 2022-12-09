import 'package:fluent_ui/fluent_ui.dart';
import 'package:warbuilder/project/presentation/application_router.dart';
import 'package:warbuilder/project/presentation/style/accent_colors.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: getAccentColor('editor.background'),
        accentColor: AccentColor('activityBar.activeBorder', accentColors),
        iconTheme: const IconThemeData(size: 24),
      ),
      onGenerateRoute: ApplicationRouter.onGenerateRoute,
    );
  }
}
