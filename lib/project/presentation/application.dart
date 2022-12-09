import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:warbuilder/project/presentation/application_router.dart';

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key) {
    doWhenWindowReady(() {
      const initialSize = Size(600, 450);
      appWindow.title = 'WarBuilder';
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'WarBuilder',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.orange,
      ),
      onGenerateRoute: ApplicationRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
