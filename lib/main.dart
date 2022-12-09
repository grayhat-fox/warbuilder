import 'package:fluent_ui/fluent_ui.dart';
import 'package:warbuilder/core/injector.dart';
import 'package:warbuilder/project/presentation/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  runApp(Application());
}
