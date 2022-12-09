import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warbuilder/project/presentation/controllers/init_project_contoller/init_project_bloc.dart';
import 'package:warbuilder/project/presentation/pages/init_project_page.dart';
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
      home: BlocProvider(
        create: (context) => InitProjectBloc(),
        child: const InitProjectPage(),
      ),
    );
  }
}
