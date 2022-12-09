import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warbuilder/project/presentation/controllers/init_project_contoller/init_project_bloc.dart';
import 'package:warbuilder/project/presentation/controllers/project_controller/project_bloc.dart';
import 'package:warbuilder/project/presentation/pages/error_page.dart';
import 'package:warbuilder/project/presentation/pages/init_project_page.dart';
import 'package:warbuilder/project/presentation/pages/project_page.dart';

class ApplicationRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FluentPageRoute(builder: (_) {
          return BlocProvider(
            create: (_) => InitProjectBloc(),
            child: InitProjectPage(),
          );
        });
      case '/project':
        return FluentPageRoute(builder: (_) {
          return BlocProvider(
            create: (_) => ProjectBloc(),
            child: ProjectPage(),
          );
        });
      default:
        return FluentPageRoute(builder: (_) {
          return const ErrorPage();
        });
    }
  }
}
